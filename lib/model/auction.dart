// cSpell:disable
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction.freezed.dart';
part 'auction.g.dart';

@freezed
abstract class Auction with _$Auction {
  factory Auction({
    @Default(-1) @JsonKey(name: 'auctionid') int auctionId,
    @Default('') @JsonKey(name: 'seller_id') String sellerId,
    @Default('') String title,
    @Default('') String content,
    @Default('') String pic,
    @Default('') String fish,
    @Default(-1) int view,
    @Default(-1) @JsonKey(name: 'pricestart') int priceStart,
    @Default(-1) @JsonKey(name: 'pricenow') int priceNow,
    @Default('2024-03-04T21:41:42')
    @JsonKey(name: 'insertdate')
    String insertDate,
    @Default(null) @JsonKey(name: 'deletedate') String? deleteDate,
    @Default(false) @JsonKey(name: 'issuccessed') bool isSuccessed,
  }) = _Auction;

  factory Auction.fromJson(Map<String, dynamic> json) =>
      _$AuctionFromJson(json);
}
