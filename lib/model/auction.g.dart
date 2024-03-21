// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionImpl _$$AuctionImplFromJson(Map<String, dynamic> json) =>
    _$AuctionImpl(
      auctionId: json['auctionid'] as int? ?? -1,
      sellerId: json['seller_id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      pic: json['pic'] as String? ?? '',
      fish: json['fish'] as String? ?? '',
      view: json['view'] as int? ?? -1,
      priceStart: json['pricestart'] as int? ?? -1,
      priceNow: json['pricenow'] as int? ?? -1,
      insertDate: json['insertdate'] as String? ?? '2024-03-04T21:41:42',
      deleteDate: json['deletedate'] as String? ?? null,
      isSuccessed: json['issuccessed'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuctionImplToJson(_$AuctionImpl instance) =>
    <String, dynamic>{
      'auctionid': instance.auctionId,
      'seller_id': instance.sellerId,
      'title': instance.title,
      'content': instance.content,
      'pic': instance.pic,
      'fish': instance.fish,
      'view': instance.view,
      'pricestart': instance.priceStart,
      'pricenow': instance.priceNow,
      'insertdate': instance.insertDate,
      'deletedate': instance.deleteDate,
      'issuccessed': instance.isSuccessed,
    };
