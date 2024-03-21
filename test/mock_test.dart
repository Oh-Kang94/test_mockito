import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_mockito/datasource/remote_datasource.dart';
import 'package:test_mockito/model/auction.dart';
import 'package:test_mockito/repository/auctions_repository.dart';

class MockRemoteDatasource extends Mock implements RemoteDatasource {}

@GenerateMocks([MockRemoteDatasource])
main() async {
  late MockRemoteDatasource remoteDatasource;
  late AuctionsRepository auctionsRepository;

  setUpAll(() {
    remoteDatasource = MockRemoteDatasource();
    auctionsRepository =
        AuctionsRepositoryImpl(remoteDatasource: remoteDatasource);
  });

  test('getAuctionList', () async {
    final List<Map<String, dynamic>> responseData = [
      {
        "auctionid": 342,
        "seller_id": "gosi",
        "title": "도미팝니당!",
        "content": "도미 굿",
        "pic": "asd.jpg",
        "fish": "도미",
        "view": 13,
        "pricestart": 10000,
        "pricenow": 10000,
        "insertdate": "2023-10-30T14:08:42",
        "deletedate": null,
        "issuccessed": false
      },
      {
        "auctionid": 351,
        "seller_id": "gosi",
        "title": "감성돔 팝니다",
        "content": "오늘 잡은 정말 맛있는 생선",
        "pic": "gosi24-03-08_07-35-37.jpg",
        "fish": "감성돔",
        "view": 11,
        "pricestart": 20000,
        "pricenow": 40000,
        "insertdate": "2024-03-04T21:41:42",
        "deletedate": null,
        "issuccessed": false
      },
      {
        "auctionid": 352,
        "seller_id": "okh19941994@naver.com",
        "title": "부시리 팔아요",
        "content": "맛있는 부시리 오늘 잡았어요",
        "pic": "okh19941994@naver.com24-03-08_07-38-53.jpg",
        "fish": "부시리",
        "view": 3,
        "pricestart": 30000,
        "pricenow": 30000,
        "insertdate": "2024-03-04T21:41:42",
        "deletedate": null,
        "issuccessed": false
      },
      {
        "auctionid": 354,
        "seller_id": "okh19941994@naver.com",
        "title": "부시리 맛있어요~!",
        "content": "오늘은 부시리가 잘잡히네요~!! ",
        "pic": "okh19941994@naver.com24-03-08_08-18-12.jpg",
        "fish": "부시리",
        "view": 9,
        "pricestart": 25000,
        "pricenow": 35000,
        "insertdate": "2024-03-04T21:41:42",
        "deletedate": null,
        "issuccessed": false
      }
    ];
    final List<Auction> expectedAuctions =
        responseData.map((json) => Auction.fromJson(json)).toList();

    when(auctionsRepository.getAuctionList())
        .thenAnswer((_) => Future.value(expectedAuctions));

    final result = await auctionsRepository.getAuctionList();
    print(result);
    expect(result, expectedAuctions);
  });
}
