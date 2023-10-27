// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductMethod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductMethod>[],
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
