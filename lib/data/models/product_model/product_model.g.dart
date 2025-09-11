// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListImpl _$$ProductListImplFromJson(Map<String, dynamic> json) =>
    _$ProductListImpl(
      totalSize: (json['total_size'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductListImplToJson(_$ProductListImpl instance) =>
    <String, dynamic>{
      'total_size': instance.totalSize,
      'limit': instance.limit,
      'offset': instance.offset,
      'products': instance.products,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      addedBy: json['added_by'] as String,
      userId: (json['user_id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      categoryIds: (json['category_ids'] as List<dynamic>)
          .map((e) => CategoryId.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandId: (json['brand_id'] as num?)?.toInt(),
      unit: json['unit'] as String?,
      minQty: (json['min_qty'] as num?)?.toInt(),
      refundable: (json['refundable'] as num?)?.toInt(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String?,
      featured: (json['featured'] as num?)?.toInt(),
      flashDeal: json['flash_deal'],
      videoProvider: json['video_provider'] as String?,
      videoUrl: json['video_url'] as String?,
      colors: json['colors'] as List<dynamic>,
      variantProduct: (json['variant_product'] as num?)?.toInt(),
      attributes: json['attributes'] as List<dynamic>,
      choiceOptions: json['choice_options'] as List<dynamic>,
      variation: json['variation'] as List<dynamic>,
      published: (json['published'] as num?)?.toInt(),
      unitPrice: json['unit_price'] as num?,
      purchasePrice: json['purchase_price'] as num?,
      tax: json['tax'] as num?,
      taxType: json['tax_type'] as String?,
      discount: json['discount'] as num?,
      discountType: json['discount_type'] as String?,
      currentStock: json['current_stock'] as num?,
      details: json['details'] as String?,
      freeShipping: (json['free_shipping'] as num?)?.toInt(),
      attachment: json['attachment'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      status: (json['status'] as num?)?.toInt(),
      featuredStatus: (json['featured_status'] as num?)?.toInt(),
      metaTitle: json['meta_title'] as String?,
      metaDescription: json['meta_description'] as String?,
      metaImage: json['meta_image'] as String?,
      requestStatus: (json['request_status'] as num?)?.toInt(),
      deniedNote: json['denied_note'] as String?,
      weight: json['weight'] as num?,
      policy: json['policy'] as String?,
      productManagerId: (json['product_manager_id'] as num?)?.toInt(),
      productManagerAmount: json['product_manager_amount'] as num?,
      isAdminManage: (json['is_admin_manage'] as num?)?.toInt(),
      sellerAmount: json['seller_amount'] as num?,
      resellerAmount: json['reseller_amount'] as num?,
      reviewsCount: (json['reviews_count'] as num?)?.toInt(),
      rating: json['rating'] as List<dynamic>,
      translations: json['translations'] as List<dynamic>,
      reviews: json['reviews'] as List<dynamic>,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'added_by': instance.addedBy,
      'user_id': instance.userId,
      'name': instance.name,
      'slug': instance.slug,
      'category_ids': instance.categoryIds,
      'brand_id': instance.brandId,
      'unit': instance.unit,
      'min_qty': instance.minQty,
      'refundable': instance.refundable,
      'images': instance.images,
      'thumbnail': instance.thumbnail,
      'featured': instance.featured,
      'flash_deal': instance.flashDeal,
      'video_provider': instance.videoProvider,
      'video_url': instance.videoUrl,
      'colors': instance.colors,
      'variant_product': instance.variantProduct,
      'attributes': instance.attributes,
      'choice_options': instance.choiceOptions,
      'variation': instance.variation,
      'published': instance.published,
      'unit_price': instance.unitPrice,
      'purchase_price': instance.purchasePrice,
      'tax': instance.tax,
      'tax_type': instance.taxType,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'current_stock': instance.currentStock,
      'details': instance.details,
      'free_shipping': instance.freeShipping,
      'attachment': instance.attachment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'status': instance.status,
      'featured_status': instance.featuredStatus,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'meta_image': instance.metaImage,
      'request_status': instance.requestStatus,
      'denied_note': instance.deniedNote,
      'weight': instance.weight,
      'policy': instance.policy,
      'product_manager_id': instance.productManagerId,
      'product_manager_amount': instance.productManagerAmount,
      'is_admin_manage': instance.isAdminManage,
      'seller_amount': instance.sellerAmount,
      'reseller_amount': instance.resellerAmount,
      'reviews_count': instance.reviewsCount,
      'rating': instance.rating,
      'translations': instance.translations,
      'reviews': instance.reviews,
    };

_$CategoryIdImpl _$$CategoryIdImplFromJson(Map<String, dynamic> json) =>
    _$CategoryIdImpl(
      id: json['id'] as String,
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoryIdImplToJson(_$CategoryIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
    };
