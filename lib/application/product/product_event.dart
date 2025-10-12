part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.init() = _Init;

  const factory ProductEvent.onBrandSelectionUpdate({required Brand value}) =
      _OnBrandSelectionUpdate;

  const factory ProductEvent.onBrandSearchUpdate({required String value}) =
      _OnBrandSearchUpdate;

  const factory ProductEvent.onBrandChipRemove({required String value}) =
      _OnBrandChipRemove;

  const factory ProductEvent.onProductImageSlide({required int index}) =
      _OnProductImageSlide;

  const factory ProductEvent.onColorSelected({required int index}) =
      _OnColorSelected;

  const factory ProductEvent.onStorageSelected({required int index}) =
      _OnStorageSelected;

  const factory ProductEvent.onExpandToggled({required ExpansionType type}) =
      _OnExpandToggled;

  const factory ProductEvent.onResetFlow({required FlowType flow}) =
      _OnResetFlow;
}

enum ExpansionType { specifications, imageBanner, effectivePrice }

enum FlowType { productDetails, effectivePrice }
