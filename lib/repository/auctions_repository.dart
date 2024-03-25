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
  final Logger _logger = Logger();

  AuctionsRepositoryImpl({
    required RemoteDatasource remoteDatasource,
  }) : _datasource = remoteDatasource;

  @override
  Future<List<Auction>> getAuctionList() async {
    try {
      var response = await _datasource.get(Url.getAuctionList.value);
      if (response != null && response.data != null) {
        List<dynamic> responseData = response.data["result"];
        return responseData.map((json) => Auction.fromJson(json)).toList();
      } else {
        throw Exception("Invalid response");
      }
    } catch (e) {
      _logger.e("${Url.getAuctionList} \n $e");
      throw Exception("Can't get AuctionList");
    }
  }
}
