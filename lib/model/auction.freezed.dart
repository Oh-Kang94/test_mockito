// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Auction _$AuctionFromJson(Map<String, dynamic> json) {
  return _Auction.fromJson(json);
}

/// @nodoc
mixin _$Auction {
  @JsonKey(name: 'auctionid')
  int get auctionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  String get sellerId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get pic => throw _privateConstructorUsedError;
  String get fish => throw _privateConstructorUsedError;
  int get view => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricestart')
  int get priceStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricenow')
  int get priceNow => throw _privateConstructorUsedError;
  @JsonKey(name: 'insertdate')
  String get insertDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'deletedate')
  String? get deleteDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuccessed')
  bool get isSuccessed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionCopyWith<Auction> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionCopyWith<$Res> {
  factory $AuctionCopyWith(Auction value, $Res Function(Auction) then) =
      _$AuctionCopyWithImpl<$Res, Auction>;
  @useResult
  $Res call(
      {@JsonKey(name: 'auctionid') int auctionId,
      @JsonKey(name: 'seller_id') String sellerId,
      String title,
      String content,
      String pic,
      String fish,
      int view,
      @JsonKey(name: 'pricestart') int priceStart,
      @JsonKey(name: 'pricenow') int priceNow,
      @JsonKey(name: 'insertdate') String insertDate,
      @JsonKey(name: 'deletedate') String? deleteDate,
      @JsonKey(name: 'issuccessed') bool isSuccessed});
}

/// @nodoc
class _$AuctionCopyWithImpl<$Res, $Val extends Auction>
    implements $AuctionCopyWith<$Res> {
  _$AuctionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? sellerId = null,
    Object? title = null,
    Object? content = null,
    Object? pic = null,
    Object? fish = null,
    Object? view = null,
    Object? priceStart = null,
    Object? priceNow = null,
    Object? insertDate = null,
    Object? deleteDate = freezed,
    Object? isSuccessed = null,
  }) {
    return _then(_value.copyWith(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      pic: null == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
      fish: null == fish
          ? _value.fish
          : fish // ignore: cast_nullable_to_non_nullable
              as String,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      priceStart: null == priceStart
          ? _value.priceStart
          : priceStart // ignore: cast_nullable_to_non_nullable
              as int,
      priceNow: null == priceNow
          ? _value.priceNow
          : priceNow // ignore: cast_nullable_to_non_nullable
              as int,
      insertDate: null == insertDate
          ? _value.insertDate
          : insertDate // ignore: cast_nullable_to_non_nullable
              as String,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccessed: null == isSuccessed
          ? _value.isSuccessed
          : isSuccessed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionImplCopyWith<$Res> implements $AuctionCopyWith<$Res> {
  factory _$$AuctionImplCopyWith(
          _$AuctionImpl value, $Res Function(_$AuctionImpl) then) =
      __$$AuctionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'auctionid') int auctionId,
      @JsonKey(name: 'seller_id') String sellerId,
      String title,
      String content,
      String pic,
      String fish,
      int view,
      @JsonKey(name: 'pricestart') int priceStart,
      @JsonKey(name: 'pricenow') int priceNow,
      @JsonKey(name: 'insertdate') String insertDate,
      @JsonKey(name: 'deletedate') String? deleteDate,
      @JsonKey(name: 'issuccessed') bool isSuccessed});
}

/// @nodoc
class __$$AuctionImplCopyWithImpl<$Res>
    extends _$AuctionCopyWithImpl<$Res, _$AuctionImpl>
    implements _$$AuctionImplCopyWith<$Res> {
  __$$AuctionImplCopyWithImpl(
      _$AuctionImpl _value, $Res Function(_$AuctionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? sellerId = null,
    Object? title = null,
    Object? content = null,
    Object? pic = null,
    Object? fish = null,
    Object? view = null,
    Object? priceStart = null,
    Object? priceNow = null,
    Object? insertDate = null,
    Object? deleteDate = freezed,
    Object? isSuccessed = null,
  }) {
    return _then(_$AuctionImpl(
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      pic: null == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
      fish: null == fish
          ? _value.fish
          : fish // ignore: cast_nullable_to_non_nullable
              as String,
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as int,
      priceStart: null == priceStart
          ? _value.priceStart
          : priceStart // ignore: cast_nullable_to_non_nullable
              as int,
      priceNow: null == priceNow
          ? _value.priceNow
          : priceNow // ignore: cast_nullable_to_non_nullable
              as int,
      insertDate: null == insertDate
          ? _value.insertDate
          : insertDate // ignore: cast_nullable_to_non_nullable
              as String,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccessed: null == isSuccessed
          ? _value.isSuccessed
          : isSuccessed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionImpl implements _Auction {
  _$AuctionImpl(
      {@JsonKey(name: 'auctionid') this.auctionId = -1,
      @JsonKey(name: 'seller_id') this.sellerId = '',
      this.title = '',
      this.content = '',
      this.pic = '',
      this.fish = '',
      this.view = -1,
      @JsonKey(name: 'pricestart') this.priceStart = -1,
      @JsonKey(name: 'pricenow') this.priceNow = -1,
      @JsonKey(name: 'insertdate') this.insertDate = '2024-03-04T21:41:42',
      @JsonKey(name: 'deletedate') this.deleteDate = null,
      @JsonKey(name: 'issuccessed') this.isSuccessed = false});

  factory _$AuctionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionImplFromJson(json);

  @override
  @JsonKey(name: 'auctionid')
  final int auctionId;
  @override
  @JsonKey(name: 'seller_id')
  final String sellerId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String pic;
  @override
  @JsonKey()
  final String fish;
  @override
  @JsonKey()
  final int view;
  @override
  @JsonKey(name: 'pricestart')
  final int priceStart;
  @override
  @JsonKey(name: 'pricenow')
  final int priceNow;
  @override
  @JsonKey(name: 'insertdate')
  final String insertDate;
  @override
  @JsonKey(name: 'deletedate')
  final String? deleteDate;
  @override
  @JsonKey(name: 'issuccessed')
  final bool isSuccessed;

  @override
  String toString() {
    return 'Auction(auctionId: $auctionId, sellerId: $sellerId, title: $title, content: $content, pic: $pic, fish: $fish, view: $view, priceStart: $priceStart, priceNow: $priceNow, insertDate: $insertDate, deleteDate: $deleteDate, isSuccessed: $isSuccessed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.fish, fish) || other.fish == fish) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.priceStart, priceStart) ||
                other.priceStart == priceStart) &&
            (identical(other.priceNow, priceNow) ||
                other.priceNow == priceNow) &&
            (identical(other.insertDate, insertDate) ||
                other.insertDate == insertDate) &&
            (identical(other.deleteDate, deleteDate) ||
                other.deleteDate == deleteDate) &&
            (identical(other.isSuccessed, isSuccessed) ||
                other.isSuccessed == isSuccessed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      auctionId,
      sellerId,
      title,
      content,
      pic,
      fish,
      view,
      priceStart,
      priceNow,
      insertDate,
      deleteDate,
      isSuccessed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionImplCopyWith<_$AuctionImpl> get copyWith =>
      __$$AuctionImplCopyWithImpl<_$AuctionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionImplToJson(
      this,
    );
  }
}

abstract class _Auction implements Auction {
  factory _Auction(
      {@JsonKey(name: 'auctionid') final int auctionId,
      @JsonKey(name: 'seller_id') final String sellerId,
      final String title,
      final String content,
      final String pic,
      final String fish,
      final int view,
      @JsonKey(name: 'pricestart') final int priceStart,
      @JsonKey(name: 'pricenow') final int priceNow,
      @JsonKey(name: 'insertdate') final String insertDate,
      @JsonKey(name: 'deletedate') final String? deleteDate,
      @JsonKey(name: 'issuccessed') final bool isSuccessed}) = _$AuctionImpl;

  factory _Auction.fromJson(Map<String, dynamic> json) = _$AuctionImpl.fromJson;

  @override
  @JsonKey(name: 'auctionid')
  int get auctionId;
  @override
  @JsonKey(name: 'seller_id')
  String get sellerId;
  @override
  String get title;
  @override
  String get content;
  @override
  String get pic;
  @override
  String get fish;
  @override
  int get view;
  @override
  @JsonKey(name: 'pricestart')
  int get priceStart;
  @override
  @JsonKey(name: 'pricenow')
  int get priceNow;
  @override
  @JsonKey(name: 'insertdate')
  String get insertDate;
  @override
  @JsonKey(name: 'deletedate')
  String? get deleteDate;
  @override
  @JsonKey(name: 'issuccessed')
  bool get isSuccessed;
  @override
  @JsonKey(ignore: true)
  _$$AuctionImplCopyWith<_$AuctionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
