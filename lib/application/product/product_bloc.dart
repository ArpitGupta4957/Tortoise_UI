import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tortoise_ui/domain/product/entities/brands.dart';
import 'package:tortoise_ui/domain/product/entities/product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.initial()) {
    on<ProductEvent>(_onEvent);
  }

  Future<void> _onEvent(ProductEvent event, Emitter<ProductState> emit) async {
    await event.map(
      init: (_) async => emit(ProductState.initial()),
      onBrandSelectionUpdate: (e) async {
        emit(state.copyWith(selectedBrand: e.value));
      },
      onBrandSearchUpdate: (e) {
        final enteredBrands = e.value
            .split(',')
            .map((e) => e.trim())
            .where((element) => element.isNotEmpty)
            .toList();
        emit(
          state.copyWith(
            selectedEnteredBrands: [
              ...state.selectedEnteredBrands,
              ...enteredBrands.where(
                (b) => !state.selectedEnteredBrands.contains(b),
              ),
            ],
          ),
        );
      },
      onBrandChipRemove: (e) {
        final updated = List<String>.from(state.selectedEnteredBrands)
          ..remove(e.value);
        emit(state.copyWith(selectedEnteredBrands: updated));
      },
      onProductImageSlide: (e) {
        emit(state.copyWith(currentProductImageIndex: e.index));
      },
      onColorSelected: (e) {
        emit(state.copyWith(selectedColorIndex: e.index));
      },
      onStorageSelected: (e) {
        emit(state.copyWith(selectedStorageIndex: e.index));
      },
      onExpandToggled: (e) {
        switch (e.type) {
          case ExpansionType.specifications:
            emit(
              state.copyWith(
                isSpecificationExpanded: !state.isSpecificationExpanded,
              ),
            );
          case ExpansionType.imageBanner:
            emit(
              state.copyWith(
                isImageBannerExpanded: !state.isImageBannerExpanded,
              ),
            );
          case ExpansionType.effectivePrice:
            emit(
              state.copyWith(
                isEffectivePriceExpanded: !state.isEffectivePriceExpanded,
              ),
            );
        }
      },
      onResetFlow: (e) {
        switch (e.flow) {
          case FlowType.productDetails:
            emit(
              state.copyWith(
                currentProductImageIndex: 0,
                selectedColorIndex: 0,
                selectedStorageIndex: 0,
                isSpecificationExpanded: false,
                isImageBannerExpanded: false,
              ),
            );
          case FlowType.effectivePrice:
            emit(state.copyWith(isEffectivePriceExpanded: true));
        }
      },
    );
  }
}
