import 'package:logger/logger.dart';
import 'package:test_mockito/datasource/remote_datasource.dart';
import 'package:test_mockito/model/auction.dart';

abstract class AuctionsRepository {
  Future<List<Auction>> getAuctionList();
}

enum Url {
  getAuctionList('/auctions');

  const Url(this.value);
  final String value;
}

class AuctionsRepositoryImpl implements AuctionsRepository {
  final RemoteDatasource _datasource;

  AuctionsRepositoryImpl({required RemoteDatasource remoteDatasource})
      : _datasource = remoteDatasource;

  @override
  Future<List<Auction>> getAuctionList() async {
    late List<Auction> result;
    final String addUrl = Url.getAuctionList.value;
    try {
      var response = await _datasource.get(addUrl);
      Logger().d(response);
      List<dynamic> responseData = response.data["result"];
      result = responseData.map((json) => Auction.fromJson(json)).toList();
      return result;
    } catch (e) {
      Logger().e("$addUrl \n $e");
      throw Exception("Can't get AuctionList");
    }
  }
}
