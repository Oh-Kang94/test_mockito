// cSpell:disable
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_mockito/datasource/remote_datasource.dart';
import 'package:test_mockito/model/auction.dart';
import 'package:test_mockito/repository/auctions_repository.dart';
import 'auctions_repository_test.mocks.dart';

@GenerateMocks([RemoteDatasource])
void main() {
  setUpAll(() {
    MockRemoteDatasource mockRemoteDatasource = MockRemoteDatasource();
    Logger logger = Logger();
    AuctionsRepository auctionsRepository = AuctionsRepositoryImpl(
      remoteDatasource: mockRemoteDatasource,
      logger: logger,
    );
  });

  group('get', () {
    final mockRemoteDatasource =
        MockRemoteDatasource(); // Define the mockRemoteDatasource variable

    test('should return data when the call to get is successful', () async {
      // 준비 단계
      when(mockRemoteDatasource.get(any)).thenAnswer((_) async => 'Test data');

      // 실행 단계
      final result = await mockRemoteDatasource.get('test_url');

      // 검증 단계
      expect(result, 'Test data');
      verify(mockRemoteDatasource.get('test_url'));
    });
  });

  // post 메소드에 대한 테스트 그룹
  group('post', () {
    final mockRemoteDatasource =
        MockRemoteDatasource(); // Define the mockRemoteDatasource variable

    test('should return data when the call to post is successful', () async {
      // 준비 단계
      when(mockRemoteDatasource.post(any, any))
          .thenAnswer((_) async => 'Test data');

      // 실행 단계
      final result = await mockRemoteDatasource.post('test_url', {});

      // 검증 단계
      expect(result, 'Test data');
      verify(mockRemoteDatasource.post('test_url', {}));
    });
  });

  // 테스트 그룹 정의
  group('AuctionsRepository', () {
    // getAuctionList 메소드에 대한 테스트
    test('getAuctionList returns a list of Auctions', () async {
      final List<Auction> expectedAuctions = [
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
      ].map((json) => Auction.fromJson(json)).toList();

      // 준비 단계
      RemoteDatasource mockRemoteDatasource = MockRemoteDatasource();
      AuctionsRepository auctionsRepository = AuctionsRepositoryImpl(
          remoteDatasource: mockRemoteDatasource, logger: logger);
      when(auctionsRepository.getAuctionList())
          .thenAnswer((_) async => expectedAuctions);

      // 실행 단계
      final result = await auctionsRepository.getAuctionList();

      // 검증 단계
      expect(result, isA<List<Auction>>());
      expect(result.length, 4);
    });
  });
}
