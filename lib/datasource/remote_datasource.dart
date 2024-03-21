import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_mockito/url.dart';

abstract class RemoteDatasource {
  Future<dynamic> get(String url,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers});
  Future<dynamic> post(String url, dynamic data,
      {Map<String, dynamic>? headers});
}

var validStatusCodes = List.generate(100, (i) => 200 + i);

enum ResponseResult { error, success }

class RemoteDatasourceImpl implements RemoteDatasource {
  late Dio _dio;

  RemoteDatasourceImpl() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 5000),
        receiveTimeout: const Duration(seconds: 5000),
        baseUrl: Url.baseurl,
      ),
    );
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers["Content-Type"] = "application/json";
          final prefs = await SharedPreferences.getInstance();
          final accesstoken = prefs.get('accesstoken') ?? '';
          options.headers["Authorization"] = "Bearer $accesstoken";
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final newAccessToken = await restoreAccessToken();
            if (newAccessToken != null) {
              _dio.options.headers["Authorization"] = "Bearer $newAccessToken";
              return handler.resolve(await _dio.fetch(error.requestOptions));
            }
          }
          return handler.next(error);
        },
      ),
    );
  }

  @override
  Future<dynamic> get(String addurl,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers}) async {
    var options = addHeadersToOptions(headers);
    try {
      var res =
          await _dio.get(addurl, options: options, queryParameters: query);
      if (!validStatusCodes.contains(res.statusCode)) {
        return ResponseResult.error;
      }
      return res;
    } catch (e) {
      Logger().e("$addurl\n$e");
      return ResponseResult.error;
    }
  }

  @override
  Future post(String addurl, dynamic data,
      {Map<String, dynamic>? headers}) async {
    var options = addHeadersToOptions(headers);
    try {
      var res = await _dio.post(addurl, options: options, data: data);
      if (!validStatusCodes.contains(res.statusCode)) {
        return ResponseResult.error;
      }
      return res;
    } catch (e) {
      Logger().e("$addurl\n$e");
      return ResponseResult.error;
    }
  }


  Options addHeadersToOptions(Map<String, dynamic>? additionalHeaders) {
    Map<String, dynamic> mergedHeaders = {
      'Content-Type': 'application/json',
    };
    if (additionalHeaders != null) {
      mergedHeaders.addAll(additionalHeaders);
    }
    return Options(
      headers: mergedHeaders,
    );
  }

  Future<String?> restoreAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final refreshToken = prefs.get('refreshtoken') ?? '';
      final Map<String, dynamic> tokenHeaders = {
        'x-refresh-token': refreshToken
      };
      final response =
          await get('/auth/restoreAccessToken', headers: tokenHeaders);
      if (response != null) {
        Logger().d(response);
        Map<String, dynamic> resData = response.data;
        String? accessToken = resData["data"];
        if (await prefs.setString('accesstoken', accessToken!) == true) {
          return accessToken;
        }
        return null;
      }
      return null;
    } catch (e) {
      await prefs.remove('refreshtoken');
      return null;
    }
  }
}
