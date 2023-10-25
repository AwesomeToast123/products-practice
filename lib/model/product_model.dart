import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductMethod with _$ProductMethod {
  const factory ProductMethod({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'price') required int price,
    @JsonKey(name: 'discountPercentage') required double discountPercentage,
    @JsonKey(name: 'rating') required double rating,
    @JsonKey(name: 'stock') required int stock,
    @JsonKey(name: 'brand') required String brand,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'thumbnail') required String thumbnail,
    @JsonKey(name: 'images') required String images,
  }) = _ProductMethod;

  factory ProductMethod.fromJson(Map<String, dynamic> json) => _$ProductMethodFromJson(json);
}
