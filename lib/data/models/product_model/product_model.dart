// product_models.dart
// Generated Freezed & JsonSerializable models for the provided JSON

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductList with _$ProductList {
  const factory ProductList({
    @JsonKey(name: 'total_size') required int totalSize,
    required int limit,
    required int offset,
    required List<Product> products,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    @JsonKey(name: 'added_by') required String addedBy,
    @JsonKey(name: 'user_id') required int userId,
    required String name,
    required String slug,
    @JsonKey(name: 'category_ids') required List<CategoryId> categoryIds,
    @JsonKey(name: 'brand_id') int? brandId,
    String? unit,
    @JsonKey(name: 'min_qty') int? minQty,
    int? refundable,
    required List<String> images,
    String? thumbnail,
    int? featured,
    @JsonKey(name: 'flash_deal') dynamic flashDeal,
    @JsonKey(name: 'video_provider') String? videoProvider,
    @JsonKey(name: 'video_url') String? videoUrl,
    required List<dynamic> colors,
    @JsonKey(name: 'variant_product') int? variantProduct,
    required List<dynamic> attributes,
    @JsonKey(name: 'choice_options') required List<dynamic> choiceOptions,
    required List<dynamic> variation,
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
    required List<dynamic> rating,
    required List<dynamic> translations,
    required List<dynamic> reviews,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class CategoryId with _$CategoryId {
  const factory CategoryId({
    required String id,
    required int position,
  }) = _CategoryId;

  factory CategoryId.fromJson(Map<String, dynamic> json) => _$CategoryIdFromJson(json);
}

// Example helpers (optional) - convert fields or provide view models in your app
// You can extend these models with additional getters or domain mapping as needed.
