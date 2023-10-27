import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_practice/model/product_model.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(<ProductMethod>[]) List<ProductMethod> products,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
