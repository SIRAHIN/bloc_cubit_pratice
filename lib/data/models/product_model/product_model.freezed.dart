// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductList _$ProductListFromJson(Map<String, dynamic> json) {
  return _ProductList.fromJson(json);
}

/// @nodoc
mixin _$ProductList {
  @JsonKey(name: 'total_size')
  int get totalSize => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  /// Serializes this ProductList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListCopyWith<ProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListCopyWith<$Res> {
  factory $ProductListCopyWith(
          ProductList value, $Res Function(ProductList) then) =
      _$ProductListCopyWithImpl<$Res, ProductList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_size') int totalSize,
      int limit,
      int offset,
      List<Product> products});
}

/// @nodoc
class _$ProductListCopyWithImpl<$Res, $Val extends ProductList>
    implements $ProductListCopyWith<$Res> {
  _$ProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSize = null,
    Object? limit = null,
    Object? offset = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListImplCopyWith<$Res>
    implements $ProductListCopyWith<$Res> {
  factory _$$ProductListImplCopyWith(
          _$ProductListImpl value, $Res Function(_$ProductListImpl) then) =
      __$$ProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_size') int totalSize,
      int limit,
      int offset,
      List<Product> products});
}

/// @nodoc
class __$$ProductListImplCopyWithImpl<$Res>
    extends _$ProductListCopyWithImpl<$Res, _$ProductListImpl>
    implements _$$ProductListImplCopyWith<$Res> {
  __$$ProductListImplCopyWithImpl(
      _$ProductListImpl _value, $Res Function(_$ProductListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSize = null,
    Object? limit = null,
    Object? offset = null,
    Object? products = null,
  }) {
    return _then(_$ProductListImpl(
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListImpl implements _ProductList {
  const _$ProductListImpl(
      {@JsonKey(name: 'total_size') required this.totalSize,
      required this.limit,
      required this.offset,
      required final List<Product> products})
      : _products = products;

  factory _$ProductListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListImplFromJson(json);

  @override
  @JsonKey(name: 'total_size')
  final int totalSize;
  @override
  final int limit;
  @override
  final int offset;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductList(totalSize: $totalSize, limit: $limit, offset: $offset, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListImpl &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalSize, limit, offset,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListImplCopyWith<_$ProductListImpl> get copyWith =>
      __$$ProductListImplCopyWithImpl<_$ProductListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListImplToJson(
      this,
    );
  }
}

abstract class _ProductList implements ProductList {
  const factory _ProductList(
      {@JsonKey(name: 'total_size') required final int totalSize,
      required final int limit,
      required final int offset,
      required final List<Product> products}) = _$ProductListImpl;

  factory _ProductList.fromJson(Map<String, dynamic> json) =
      _$ProductListImpl.fromJson;

  @override
  @JsonKey(name: 'total_size')
  int get totalSize;
  @override
  int get limit;
  @override
  int get offset;
  @override
  List<Product> get products;

  /// Create a copy of ProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListImplCopyWith<_$ProductListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'added_by')
  String get addedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_ids')
  List<CategoryId> get categoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_id')
  int? get brandId => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_qty')
  int? get minQty => throw _privateConstructorUsedError;
  int? get refundable => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  int? get featured => throw _privateConstructorUsedError;
  @JsonKey(name: 'flash_deal')
  dynamic get flashDeal => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_provider')
  String? get videoProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  List<dynamic> get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_product')
  int? get variantProduct => throw _privateConstructorUsedError;
  List<dynamic> get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'choice_options')
  List<dynamic> get choiceOptions => throw _privateConstructorUsedError;
  List<dynamic> get variation => throw _privateConstructorUsedError;
  int? get published => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  num? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchase_price')
  num? get purchasePrice => throw _privateConstructorUsedError;
  num? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_type')
  String? get taxType => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_stock')
  num? get currentStock => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'free_shipping')
  int? get freeShipping => throw _privateConstructorUsedError;
  dynamic get attachment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_status')
  int? get featuredStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_title')
  String? get metaTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_description')
  String? get metaDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_image')
  String? get metaImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_status')
  int? get requestStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'denied_note')
  String? get deniedNote => throw _privateConstructorUsedError;
  num? get weight => throw _privateConstructorUsedError;
  String? get policy => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_manager_id')
  int? get productManagerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_manager_amount')
  num? get productManagerAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin_manage')
  int? get isAdminManage => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_amount')
  num? get sellerAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reseller_amount')
  num? get resellerAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  List<dynamic> get rating => throw _privateConstructorUsedError;
  List<dynamic> get translations => throw _privateConstructorUsedError;
  List<dynamic> get reviews => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'added_by') String addedBy,
      @JsonKey(name: 'user_id') int userId,
      String name,
      String slug,
      @JsonKey(name: 'category_ids') List<CategoryId> categoryIds,
      @JsonKey(name: 'brand_id') int? brandId,
      String? unit,
      @JsonKey(name: 'min_qty') int? minQty,
      int? refundable,
      List<String> images,
      String? thumbnail,
      int? featured,
      @JsonKey(name: 'flash_deal') dynamic flashDeal,
      @JsonKey(name: 'video_provider') String? videoProvider,
      @JsonKey(name: 'video_url') String? videoUrl,
      List<dynamic> colors,
      @JsonKey(name: 'variant_product') int? variantProduct,
      List<dynamic> attributes,
      @JsonKey(name: 'choice_options') List<dynamic> choiceOptions,
      List<dynamic> variation,
      int? published,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'purchase_price') num? purchasePrice,
      num? tax,
      @JsonKey(name: 'tax_type') String? taxType,
      num? discount,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'current_stock') num? currentStock,
      String? details,
      @JsonKey(name: 'free_shipping') int? freeShipping,
      dynamic attachment,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? status,
      @JsonKey(name: 'featured_status') int? featuredStatus,
      @JsonKey(name: 'meta_title') String? metaTitle,
      @JsonKey(name: 'meta_description') String? metaDescription,
      @JsonKey(name: 'meta_image') String? metaImage,
      @JsonKey(name: 'request_status') int? requestStatus,
      @JsonKey(name: 'denied_note') String? deniedNote,
      num? weight,
      String? policy,
      @JsonKey(name: 'product_manager_id') int? productManagerId,
      @JsonKey(name: 'product_manager_amount') num? productManagerAmount,
      @JsonKey(name: 'is_admin_manage') int? isAdminManage,
      @JsonKey(name: 'seller_amount') num? sellerAmount,
      @JsonKey(name: 'reseller_amount') num? resellerAmount,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      List<dynamic> rating,
      List<dynamic> translations,
      List<dynamic> reviews});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addedBy = null,
    Object? userId = null,
    Object? name = null,
    Object? slug = null,
    Object? categoryIds = null,
    Object? brandId = freezed,
    Object? unit = freezed,
    Object? minQty = freezed,
    Object? refundable = freezed,
    Object? images = null,
    Object? thumbnail = freezed,
    Object? featured = freezed,
    Object? flashDeal = freezed,
    Object? videoProvider = freezed,
    Object? videoUrl = freezed,
    Object? colors = null,
    Object? variantProduct = freezed,
    Object? attributes = null,
    Object? choiceOptions = null,
    Object? variation = null,
    Object? published = freezed,
    Object? unitPrice = freezed,
    Object? purchasePrice = freezed,
    Object? tax = freezed,
    Object? taxType = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? currentStock = freezed,
    Object? details = freezed,
    Object? freeShipping = freezed,
    Object? attachment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? featuredStatus = freezed,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? metaImage = freezed,
    Object? requestStatus = freezed,
    Object? deniedNote = freezed,
    Object? weight = freezed,
    Object? policy = freezed,
    Object? productManagerId = freezed,
    Object? productManagerAmount = freezed,
    Object? isAdminManage = freezed,
    Object? sellerAmount = freezed,
    Object? resellerAmount = freezed,
    Object? reviewsCount = freezed,
    Object? rating = null,
    Object? translations = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIds: null == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<CategoryId>,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      minQty: freezed == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int?,
      refundable: freezed == refundable
          ? _value.refundable
          : refundable // ignore: cast_nullable_to_non_nullable
              as int?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      flashDeal: freezed == flashDeal
          ? _value.flashDeal
          : flashDeal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      videoProvider: freezed == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      variantProduct: freezed == variantProduct
          ? _value.variantProduct
          : variantProduct // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      choiceOptions: null == choiceOptions
          ? _value.choiceOptions
          : choiceOptions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as num?,
      taxType: freezed == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as num?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      freeShipping: freezed == freeShipping
          ? _value.freeShipping
          : freeShipping // ignore: cast_nullable_to_non_nullable
              as int?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      featuredStatus: freezed == featuredStatus
          ? _value.featuredStatus
          : featuredStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaImage: freezed == metaImage
          ? _value.metaImage
          : metaImage // ignore: cast_nullable_to_non_nullable
              as String?,
      requestStatus: freezed == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      deniedNote: freezed == deniedNote
          ? _value.deniedNote
          : deniedNote // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      productManagerId: freezed == productManagerId
          ? _value.productManagerId
          : productManagerId // ignore: cast_nullable_to_non_nullable
              as int?,
      productManagerAmount: freezed == productManagerAmount
          ? _value.productManagerAmount
          : productManagerAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      isAdminManage: freezed == isAdminManage
          ? _value.isAdminManage
          : isAdminManage // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerAmount: freezed == sellerAmount
          ? _value.sellerAmount
          : sellerAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      resellerAmount: freezed == resellerAmount
          ? _value.resellerAmount
          : resellerAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'added_by') String addedBy,
      @JsonKey(name: 'user_id') int userId,
      String name,
      String slug,
      @JsonKey(name: 'category_ids') List<CategoryId> categoryIds,
      @JsonKey(name: 'brand_id') int? brandId,
      String? unit,
      @JsonKey(name: 'min_qty') int? minQty,
      int? refundable,
      List<String> images,
      String? thumbnail,
      int? featured,
      @JsonKey(name: 'flash_deal') dynamic flashDeal,
      @JsonKey(name: 'video_provider') String? videoProvider,
      @JsonKey(name: 'video_url') String? videoUrl,
      List<dynamic> colors,
      @JsonKey(name: 'variant_product') int? variantProduct,
      List<dynamic> attributes,
      @JsonKey(name: 'choice_options') List<dynamic> choiceOptions,
      List<dynamic> variation,
      int? published,
      @JsonKey(name: 'unit_price') num? unitPrice,
      @JsonKey(name: 'purchase_price') num? purchasePrice,
      num? tax,
      @JsonKey(name: 'tax_type') String? taxType,
      num? discount,
      @JsonKey(name: 'discount_type') String? discountType,
      @JsonKey(name: 'current_stock') num? currentStock,
      String? details,
      @JsonKey(name: 'free_shipping') int? freeShipping,
      dynamic attachment,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? status,
      @JsonKey(name: 'featured_status') int? featuredStatus,
      @JsonKey(name: 'meta_title') String? metaTitle,
      @JsonKey(name: 'meta_description') String? metaDescription,
      @JsonKey(name: 'meta_image') String? metaImage,
      @JsonKey(name: 'request_status') int? requestStatus,
      @JsonKey(name: 'denied_note') String? deniedNote,
      num? weight,
      String? policy,
      @JsonKey(name: 'product_manager_id') int? productManagerId,
      @JsonKey(name: 'product_manager_amount') num? productManagerAmount,
      @JsonKey(name: 'is_admin_manage') int? isAdminManage,
      @JsonKey(name: 'seller_amount') num? sellerAmount,
      @JsonKey(name: 'reseller_amount') num? resellerAmount,
      @JsonKey(name: 'reviews_count') int? reviewsCount,
      List<dynamic> rating,
      List<dynamic> translations,
      List<dynamic> reviews});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addedBy = null,
    Object? userId = null,
    Object? name = null,
    Object? slug = null,
    Object? categoryIds = null,
    Object? brandId = freezed,
    Object? unit = freezed,
    Object? minQty = freezed,
    Object? refundable = freezed,
    Object? images = null,
    Object? thumbnail = freezed,
    Object? featured = freezed,
    Object? flashDeal = freezed,
    Object? videoProvider = freezed,
    Object? videoUrl = freezed,
    Object? colors = null,
    Object? variantProduct = freezed,
    Object? attributes = null,
    Object? choiceOptions = null,
    Object? variation = null,
    Object? published = freezed,
    Object? unitPrice = freezed,
    Object? purchasePrice = freezed,
    Object? tax = freezed,
    Object? taxType = freezed,
    Object? discount = freezed,
    Object? discountType = freezed,
    Object? currentStock = freezed,
    Object? details = freezed,
    Object? freeShipping = freezed,
    Object? attachment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? featuredStatus = freezed,
    Object? metaTitle = freezed,
    Object? metaDescription = freezed,
    Object? metaImage = freezed,
    Object? requestStatus = freezed,
    Object? deniedNote = freezed,
    Object? weight = freezed,
    Object? policy = freezed,
    Object? productManagerId = freezed,
    Object? productManagerAmount = freezed,
    Object? isAdminManage = freezed,
    Object? sellerAmount = freezed,
    Object? resellerAmount = freezed,
    Object? reviewsCount = freezed,
    Object? rating = null,
    Object? translations = null,
    Object? reviews = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIds: null == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<CategoryId>,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      minQty: freezed == minQty
          ? _value.minQty
          : minQty // ignore: cast_nullable_to_non_nullable
              as int?,
      refundable: freezed == refundable
          ? _value.refundable
          : refundable // ignore: cast_nullable_to_non_nullable
              as int?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      featured: freezed == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as int?,
      flashDeal: freezed == flashDeal
          ? _value.flashDeal
          : flashDeal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      videoProvider: freezed == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      variantProduct: freezed == variantProduct
          ? _value.variantProduct
          : variantProduct // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      choiceOptions: null == choiceOptions
          ? _value._choiceOptions
          : choiceOptions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      variation: null == variation
          ? _value._variation
          : variation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      published: freezed == published
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as int?,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as num?,
      taxType: freezed == taxType
          ? _value.taxType
          : taxType // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStock: freezed == currentStock
          ? _value.currentStock
          : currentStock // ignore: cast_nullable_to_non_nullable
              as num?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      freeShipping: freezed == freeShipping
          ? _value.freeShipping
          : freeShipping // ignore: cast_nullable_to_non_nullable
              as int?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      featuredStatus: freezed == featuredStatus
          ? _value.featuredStatus
          : featuredStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      metaImage: freezed == metaImage
          ? _value.metaImage
          : metaImage // ignore: cast_nullable_to_non_nullable
              as String?,
      requestStatus: freezed == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      deniedNote: freezed == deniedNote
          ? _value.deniedNote
          : deniedNote // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as num?,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as String?,
      productManagerId: freezed == productManagerId
          ? _value.productManagerId
          : productManagerId // ignore: cast_nullable_to_non_nullable
              as int?,
      productManagerAmount: freezed == productManagerAmount
          ? _value.productManagerAmount
          : productManagerAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      isAdminManage: freezed == isAdminManage
          ? _value.isAdminManage
          : isAdminManage // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerAmount: freezed == sellerAmount
          ? _value.sellerAmount
          : sellerAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      resellerAmount: freezed == resellerAmount
          ? _value.resellerAmount
          : resellerAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value._rating
          : rating // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      @JsonKey(name: 'added_by') required this.addedBy,
      @JsonKey(name: 'user_id') required this.userId,
      required this.name,
      required this.slug,
      @JsonKey(name: 'category_ids')
      required final List<CategoryId> categoryIds,
      @JsonKey(name: 'brand_id') this.brandId,
      this.unit,
      @JsonKey(name: 'min_qty') this.minQty,
      this.refundable,
      required final List<String> images,
      this.thumbnail,
      this.featured,
      @JsonKey(name: 'flash_deal') this.flashDeal,
      @JsonKey(name: 'video_provider') this.videoProvider,
      @JsonKey(name: 'video_url') this.videoUrl,
      required final List<dynamic> colors,
      @JsonKey(name: 'variant_product') this.variantProduct,
      required final List<dynamic> attributes,
      @JsonKey(name: 'choice_options')
      required final List<dynamic> choiceOptions,
      required final List<dynamic> variation,
      this.published,
      @JsonKey(name: 'unit_price') this.unitPrice,
      @JsonKey(name: 'purchase_price') this.purchasePrice,
      this.tax,
      @JsonKey(name: 'tax_type') this.taxType,
      this.discount,
      @JsonKey(name: 'discount_type') this.discountType,
      @JsonKey(name: 'current_stock') this.currentStock,
      this.details,
      @JsonKey(name: 'free_shipping') this.freeShipping,
      this.attachment,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.status,
      @JsonKey(name: 'featured_status') this.featuredStatus,
      @JsonKey(name: 'meta_title') this.metaTitle,
      @JsonKey(name: 'meta_description') this.metaDescription,
      @JsonKey(name: 'meta_image') this.metaImage,
      @JsonKey(name: 'request_status') this.requestStatus,
      @JsonKey(name: 'denied_note') this.deniedNote,
      this.weight,
      this.policy,
      @JsonKey(name: 'product_manager_id') this.productManagerId,
      @JsonKey(name: 'product_manager_amount') this.productManagerAmount,
      @JsonKey(name: 'is_admin_manage') this.isAdminManage,
      @JsonKey(name: 'seller_amount') this.sellerAmount,
      @JsonKey(name: 'reseller_amount') this.resellerAmount,
      @JsonKey(name: 'reviews_count') this.reviewsCount,
      required final List<dynamic> rating,
      required final List<dynamic> translations,
      required final List<dynamic> reviews})
      : _categoryIds = categoryIds,
        _images = images,
        _colors = colors,
        _attributes = attributes,
        _choiceOptions = choiceOptions,
        _variation = variation,
        _rating = rating,
        _translations = translations,
        _reviews = reviews;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'added_by')
  final String addedBy;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String name;
  @override
  final String slug;
  final List<CategoryId> _categoryIds;
  @override
  @JsonKey(name: 'category_ids')
  List<CategoryId> get categoryIds {
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryIds);
  }

  @override
  @JsonKey(name: 'brand_id')
  final int? brandId;
  @override
  final String? unit;
  @override
  @JsonKey(name: 'min_qty')
  final int? minQty;
  @override
  final int? refundable;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? thumbnail;
  @override
  final int? featured;
  @override
  @JsonKey(name: 'flash_deal')
  final dynamic flashDeal;
  @override
  @JsonKey(name: 'video_provider')
  final String? videoProvider;
  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  final List<dynamic> _colors;
  @override
  List<dynamic> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  @JsonKey(name: 'variant_product')
  final int? variantProduct;
  final List<dynamic> _attributes;
  @override
  List<dynamic> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<dynamic> _choiceOptions;
  @override
  @JsonKey(name: 'choice_options')
  List<dynamic> get choiceOptions {
    if (_choiceOptions is EqualUnmodifiableListView) return _choiceOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choiceOptions);
  }

  final List<dynamic> _variation;
  @override
  List<dynamic> get variation {
    if (_variation is EqualUnmodifiableListView) return _variation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variation);
  }

  @override
  final int? published;
  @override
  @JsonKey(name: 'unit_price')
  final num? unitPrice;
  @override
  @JsonKey(name: 'purchase_price')
  final num? purchasePrice;
  @override
  final num? tax;
  @override
  @JsonKey(name: 'tax_type')
  final String? taxType;
  @override
  final num? discount;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;
  @override
  @JsonKey(name: 'current_stock')
  final num? currentStock;
  @override
  final String? details;
  @override
  @JsonKey(name: 'free_shipping')
  final int? freeShipping;
  @override
  final dynamic attachment;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final int? status;
  @override
  @JsonKey(name: 'featured_status')
  final int? featuredStatus;
  @override
  @JsonKey(name: 'meta_title')
  final String? metaTitle;
  @override
  @JsonKey(name: 'meta_description')
  final String? metaDescription;
  @override
  @JsonKey(name: 'meta_image')
  final String? metaImage;
  @override
  @JsonKey(name: 'request_status')
  final int? requestStatus;
  @override
  @JsonKey(name: 'denied_note')
  final String? deniedNote;
  @override
  final num? weight;
  @override
  final String? policy;
  @override
  @JsonKey(name: 'product_manager_id')
  final int? productManagerId;
  @override
  @JsonKey(name: 'product_manager_amount')
  final num? productManagerAmount;
  @override
  @JsonKey(name: 'is_admin_manage')
  final int? isAdminManage;
  @override
  @JsonKey(name: 'seller_amount')
  final num? sellerAmount;
  @override
  @JsonKey(name: 'reseller_amount')
  final num? resellerAmount;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  final List<dynamic> _rating;
  @override
  List<dynamic> get rating {
    if (_rating is EqualUnmodifiableListView) return _rating;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rating);
  }

  final List<dynamic> _translations;
  @override
  List<dynamic> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  final List<dynamic> _reviews;
  @override
  List<dynamic> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'Product(id: $id, addedBy: $addedBy, userId: $userId, name: $name, slug: $slug, categoryIds: $categoryIds, brandId: $brandId, unit: $unit, minQty: $minQty, refundable: $refundable, images: $images, thumbnail: $thumbnail, featured: $featured, flashDeal: $flashDeal, videoProvider: $videoProvider, videoUrl: $videoUrl, colors: $colors, variantProduct: $variantProduct, attributes: $attributes, choiceOptions: $choiceOptions, variation: $variation, published: $published, unitPrice: $unitPrice, purchasePrice: $purchasePrice, tax: $tax, taxType: $taxType, discount: $discount, discountType: $discountType, currentStock: $currentStock, details: $details, freeShipping: $freeShipping, attachment: $attachment, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, featuredStatus: $featuredStatus, metaTitle: $metaTitle, metaDescription: $metaDescription, metaImage: $metaImage, requestStatus: $requestStatus, deniedNote: $deniedNote, weight: $weight, policy: $policy, productManagerId: $productManagerId, productManagerAmount: $productManagerAmount, isAdminManage: $isAdminManage, sellerAmount: $sellerAmount, resellerAmount: $resellerAmount, reviewsCount: $reviewsCount, rating: $rating, translations: $translations, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.minQty, minQty) || other.minQty == minQty) &&
            (identical(other.refundable, refundable) ||
                other.refundable == refundable) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.featured, featured) ||
                other.featured == featured) &&
            const DeepCollectionEquality().equals(other.flashDeal, flashDeal) &&
            (identical(other.videoProvider, videoProvider) ||
                other.videoProvider == videoProvider) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.variantProduct, variantProduct) ||
                other.variantProduct == variantProduct) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality()
                .equals(other._choiceOptions, _choiceOptions) &&
            const DeepCollectionEquality()
                .equals(other._variation, _variation) &&
            (identical(other.published, published) ||
                other.published == published) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.taxType, taxType) || other.taxType == taxType) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.currentStock, currentStock) ||
                other.currentStock == currentStock) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.freeShipping, freeShipping) ||
                other.freeShipping == freeShipping) &&
            const DeepCollectionEquality()
                .equals(other.attachment, attachment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.featuredStatus, featuredStatus) ||
                other.featuredStatus == featuredStatus) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.metaImage, metaImage) ||
                other.metaImage == metaImage) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.deniedNote, deniedNote) ||
                other.deniedNote == deniedNote) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.productManagerId, productManagerId) ||
                other.productManagerId == productManagerId) &&
            (identical(other.productManagerAmount, productManagerAmount) ||
                other.productManagerAmount == productManagerAmount) &&
            (identical(other.isAdminManage, isAdminManage) ||
                other.isAdminManage == isAdminManage) &&
            (identical(other.sellerAmount, sellerAmount) ||
                other.sellerAmount == sellerAmount) &&
            (identical(other.resellerAmount, resellerAmount) ||
                other.resellerAmount == resellerAmount) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            const DeepCollectionEquality().equals(other._rating, _rating) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        addedBy,
        userId,
        name,
        slug,
        const DeepCollectionEquality().hash(_categoryIds),
        brandId,
        unit,
        minQty,
        refundable,
        const DeepCollectionEquality().hash(_images),
        thumbnail,
        featured,
        const DeepCollectionEquality().hash(flashDeal),
        videoProvider,
        videoUrl,
        const DeepCollectionEquality().hash(_colors),
        variantProduct,
        const DeepCollectionEquality().hash(_attributes),
        const DeepCollectionEquality().hash(_choiceOptions),
        const DeepCollectionEquality().hash(_variation),
        published,
        unitPrice,
        purchasePrice,
        tax,
        taxType,
        discount,
        discountType,
        currentStock,
        details,
        freeShipping,
        const DeepCollectionEquality().hash(attachment),
        createdAt,
        updatedAt,
        status,
        featuredStatus,
        metaTitle,
        metaDescription,
        metaImage,
        requestStatus,
        deniedNote,
        weight,
        policy,
        productManagerId,
        productManagerAmount,
        isAdminManage,
        sellerAmount,
        resellerAmount,
        reviewsCount,
        const DeepCollectionEquality().hash(_rating),
        const DeepCollectionEquality().hash(_translations),
        const DeepCollectionEquality().hash(_reviews)
      ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      @JsonKey(name: 'added_by') required final String addedBy,
      @JsonKey(name: 'user_id') required final int userId,
      required final String name,
      required final String slug,
      @JsonKey(name: 'category_ids')
      required final List<CategoryId> categoryIds,
      @JsonKey(name: 'brand_id') final int? brandId,
      final String? unit,
      @JsonKey(name: 'min_qty') final int? minQty,
      final int? refundable,
      required final List<String> images,
      final String? thumbnail,
      final int? featured,
      @JsonKey(name: 'flash_deal') final dynamic flashDeal,
      @JsonKey(name: 'video_provider') final String? videoProvider,
      @JsonKey(name: 'video_url') final String? videoUrl,
      required final List<dynamic> colors,
      @JsonKey(name: 'variant_product') final int? variantProduct,
      required final List<dynamic> attributes,
      @JsonKey(name: 'choice_options')
      required final List<dynamic> choiceOptions,
      required final List<dynamic> variation,
      final int? published,
      @JsonKey(name: 'unit_price') final num? unitPrice,
      @JsonKey(name: 'purchase_price') final num? purchasePrice,
      final num? tax,
      @JsonKey(name: 'tax_type') final String? taxType,
      final num? discount,
      @JsonKey(name: 'discount_type') final String? discountType,
      @JsonKey(name: 'current_stock') final num? currentStock,
      final String? details,
      @JsonKey(name: 'free_shipping') final int? freeShipping,
      final dynamic attachment,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final int? status,
      @JsonKey(name: 'featured_status') final int? featuredStatus,
      @JsonKey(name: 'meta_title') final String? metaTitle,
      @JsonKey(name: 'meta_description') final String? metaDescription,
      @JsonKey(name: 'meta_image') final String? metaImage,
      @JsonKey(name: 'request_status') final int? requestStatus,
      @JsonKey(name: 'denied_note') final String? deniedNote,
      final num? weight,
      final String? policy,
      @JsonKey(name: 'product_manager_id') final int? productManagerId,
      @JsonKey(name: 'product_manager_amount') final num? productManagerAmount,
      @JsonKey(name: 'is_admin_manage') final int? isAdminManage,
      @JsonKey(name: 'seller_amount') final num? sellerAmount,
      @JsonKey(name: 'reseller_amount') final num? resellerAmount,
      @JsonKey(name: 'reviews_count') final int? reviewsCount,
      required final List<dynamic> rating,
      required final List<dynamic> translations,
      required final List<dynamic> reviews}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'added_by')
  String get addedBy;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(name: 'category_ids')
  List<CategoryId> get categoryIds;
  @override
  @JsonKey(name: 'brand_id')
  int? get brandId;
  @override
  String? get unit;
  @override
  @JsonKey(name: 'min_qty')
  int? get minQty;
  @override
  int? get refundable;
  @override
  List<String> get images;
  @override
  String? get thumbnail;
  @override
  int? get featured;
  @override
  @JsonKey(name: 'flash_deal')
  dynamic get flashDeal;
  @override
  @JsonKey(name: 'video_provider')
  String? get videoProvider;
  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  List<dynamic> get colors;
  @override
  @JsonKey(name: 'variant_product')
  int? get variantProduct;
  @override
  List<dynamic> get attributes;
  @override
  @JsonKey(name: 'choice_options')
  List<dynamic> get choiceOptions;
  @override
  List<dynamic> get variation;
  @override
  int? get published;
  @override
  @JsonKey(name: 'unit_price')
  num? get unitPrice;
  @override
  @JsonKey(name: 'purchase_price')
  num? get purchasePrice;
  @override
  num? get tax;
  @override
  @JsonKey(name: 'tax_type')
  String? get taxType;
  @override
  num? get discount;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;
  @override
  @JsonKey(name: 'current_stock')
  num? get currentStock;
  @override
  String? get details;
  @override
  @JsonKey(name: 'free_shipping')
  int? get freeShipping;
  @override
  dynamic get attachment;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  int? get status;
  @override
  @JsonKey(name: 'featured_status')
  int? get featuredStatus;
  @override
  @JsonKey(name: 'meta_title')
  String? get metaTitle;
  @override
  @JsonKey(name: 'meta_description')
  String? get metaDescription;
  @override
  @JsonKey(name: 'meta_image')
  String? get metaImage;
  @override
  @JsonKey(name: 'request_status')
  int? get requestStatus;
  @override
  @JsonKey(name: 'denied_note')
  String? get deniedNote;
  @override
  num? get weight;
  @override
  String? get policy;
  @override
  @JsonKey(name: 'product_manager_id')
  int? get productManagerId;
  @override
  @JsonKey(name: 'product_manager_amount')
  num? get productManagerAmount;
  @override
  @JsonKey(name: 'is_admin_manage')
  int? get isAdminManage;
  @override
  @JsonKey(name: 'seller_amount')
  num? get sellerAmount;
  @override
  @JsonKey(name: 'reseller_amount')
  num? get resellerAmount;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  List<dynamic> get rating;
  @override
  List<dynamic> get translations;
  @override
  List<dynamic> get reviews;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryId _$CategoryIdFromJson(Map<String, dynamic> json) {
  return _CategoryId.fromJson(json);
}

/// @nodoc
mixin _$CategoryId {
  String get id => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  /// Serializes this CategoryId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryIdCopyWith<CategoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryIdCopyWith<$Res> {
  factory $CategoryIdCopyWith(
          CategoryId value, $Res Function(CategoryId) then) =
      _$CategoryIdCopyWithImpl<$Res, CategoryId>;
  @useResult
  $Res call({String id, int position});
}

/// @nodoc
class _$CategoryIdCopyWithImpl<$Res, $Val extends CategoryId>
    implements $CategoryIdCopyWith<$Res> {
  _$CategoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryIdImplCopyWith<$Res>
    implements $CategoryIdCopyWith<$Res> {
  factory _$$CategoryIdImplCopyWith(
          _$CategoryIdImpl value, $Res Function(_$CategoryIdImpl) then) =
      __$$CategoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int position});
}

/// @nodoc
class __$$CategoryIdImplCopyWithImpl<$Res>
    extends _$CategoryIdCopyWithImpl<$Res, _$CategoryIdImpl>
    implements _$$CategoryIdImplCopyWith<$Res> {
  __$$CategoryIdImplCopyWithImpl(
      _$CategoryIdImpl _value, $Res Function(_$CategoryIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? position = null,
  }) {
    return _then(_$CategoryIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryIdImpl implements _CategoryId {
  const _$CategoryIdImpl({required this.id, required this.position});

  factory _$CategoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryIdImplFromJson(json);

  @override
  final String id;
  @override
  final int position;

  @override
  String toString() {
    return 'CategoryId(id: $id, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, position);

  /// Create a copy of CategoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      __$$CategoryIdImplCopyWithImpl<_$CategoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryIdImplToJson(
      this,
    );
  }
}

abstract class _CategoryId implements CategoryId {
  const factory _CategoryId(
      {required final String id,
      required final int position}) = _$CategoryIdImpl;

  factory _CategoryId.fromJson(Map<String, dynamic> json) =
      _$CategoryIdImpl.fromJson;

  @override
  String get id;
  @override
  int get position;

  /// Create a copy of CategoryId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryIdImplCopyWith<_$CategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
