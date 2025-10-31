part of 'product_bloc.dart';

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductEvent()';
  }
}

/// @nodoc
class $ProductEventCopyWith<$Res> {
  $ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}

extension ProductEventPatterns on ProductEvent {
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_OnBrandSelectionUpdate value)? onBrandSelectionUpdate,
    TResult Function(_OnBrandSearchUpdate value)? onBrandSearchUpdate,
    TResult Function(_OnBrandChipRemove value)? onBrandChipRemove,
    TResult Function(_OnProductImageSlide value)? onProductImageSlide,
    TResult Function(_OnColorSelected value)? onColorSelected,
    TResult Function(_OnStorageSelected value)? onStorageSelected,
    TResult Function(_OnExpandToggled value)? onExpandToggled,
    TResult Function(_OnResetFlow value)? onResetFlow,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Init() when init != null:
        return init(_that);
      case _OnBrandSelectionUpdate() when onBrandSelectionUpdate != null:
        return onBrandSelectionUpdate(_that);
      case _OnBrandSearchUpdate() when onBrandSearchUpdate != null:
        return onBrandSearchUpdate(_that);
      case _OnBrandChipRemove() when onBrandChipRemove != null:
        return onBrandChipRemove(_that);
      case _OnProductImageSlide() when onProductImageSlide != null:
        return onProductImageSlide(_that);
      case _OnColorSelected() when onColorSelected != null:
        return onColorSelected(_that);
      case _OnStorageSelected() when onStorageSelected != null:
        return onStorageSelected(_that);
      case _OnExpandToggled() when onExpandToggled != null:
        return onExpandToggled(_that);
      case _OnResetFlow() when onResetFlow != null:
        return onResetFlow(_that);
      case _:
        return orElse();
    }
  }

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_OnBrandSelectionUpdate value)
    onBrandSelectionUpdate,
    required TResult Function(_OnBrandSearchUpdate value) onBrandSearchUpdate,
    required TResult Function(_OnBrandChipRemove value) onBrandChipRemove,
    required TResult Function(_OnProductImageSlide value) onProductImageSlide,
    required TResult Function(_OnColorSelected value) onColorSelected,
    required TResult Function(_OnStorageSelected value) onStorageSelected,
    required TResult Function(_OnExpandToggled value) onExpandToggled,
    required TResult Function(_OnResetFlow value) onResetFlow,
  }) {
    final _that = this;
    switch (_that) {
      case _Init():
        return init(_that);
      case _OnBrandSelectionUpdate():
        return onBrandSelectionUpdate(_that);
      case _OnBrandSearchUpdate():
        return onBrandSearchUpdate(_that);
      case _OnBrandChipRemove():
        return onBrandChipRemove(_that);
      case _OnProductImageSlide():
        return onProductImageSlide(_that);
      case _OnColorSelected():
        return onColorSelected(_that);
      case _OnStorageSelected():
        return onStorageSelected(_that);
      case _OnExpandToggled():
        return onExpandToggled(_that);
      case _OnResetFlow():
        return onResetFlow(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_OnBrandSelectionUpdate value)? onBrandSelectionUpdate,
    TResult? Function(_OnBrandSearchUpdate value)? onBrandSearchUpdate,
    TResult? Function(_OnBrandChipRemove value)? onBrandChipRemove,
    TResult? Function(_OnProductImageSlide value)? onProductImageSlide,
    TResult? Function(_OnColorSelected value)? onColorSelected,
    TResult? Function(_OnStorageSelected value)? onStorageSelected,
    TResult? Function(_OnExpandToggled value)? onExpandToggled,
    TResult? Function(_OnResetFlow value)? onResetFlow,
  }) {
    final _that = this;
    switch (_that) {
      case _Init() when init != null:
        return init(_that);
      case _OnBrandSelectionUpdate() when onBrandSelectionUpdate != null:
        return onBrandSelectionUpdate(_that);
      case _OnBrandSearchUpdate() when onBrandSearchUpdate != null:
        return onBrandSearchUpdate(_that);
      case _OnBrandChipRemove() when onBrandChipRemove != null:
        return onBrandChipRemove(_that);
      case _OnProductImageSlide() when onProductImageSlide != null:
        return onProductImageSlide(_that);
      case _OnColorSelected() when onColorSelected != null:
        return onColorSelected(_that);
      case _OnStorageSelected() when onStorageSelected != null:
        return onStorageSelected(_that);
      case _OnExpandToggled() when onExpandToggled != null:
        return onExpandToggled(_that);
      case _OnResetFlow() when onResetFlow != null:
        return onResetFlow(_that);
      case _:
        return null;
    }
  }

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Brand value)? onBrandSelectionUpdate,
    TResult Function(String value)? onBrandSearchUpdate,
    TResult Function(String value)? onBrandChipRemove,
    TResult Function(int index)? onProductImageSlide,
    TResult Function(int index)? onColorSelected,
    TResult Function(int index)? onStorageSelected,
    TResult Function(ExpansionType type)? onExpandToggled,
    TResult Function(FlowType flow)? onResetFlow,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Init() when init != null:
        return init();
      case _OnBrandSelectionUpdate() when onBrandSelectionUpdate != null:
        return onBrandSelectionUpdate(_that.value);
      case _OnBrandSearchUpdate() when onBrandSearchUpdate != null:
        return onBrandSearchUpdate(_that.value);
      case _OnBrandChipRemove() when onBrandChipRemove != null:
        return onBrandChipRemove(_that.value);
      case _OnProductImageSlide() when onProductImageSlide != null:
        return onProductImageSlide(_that.index);
      case _OnColorSelected() when onColorSelected != null:
        return onColorSelected(_that.index);
      case _OnStorageSelected() when onStorageSelected != null:
        return onStorageSelected(_that.index);
      case _OnExpandToggled() when onExpandToggled != null:
        return onExpandToggled(_that.type);
      case _OnResetFlow() when onResetFlow != null:
        return onResetFlow(_that.flow);
      case _:
        return orElse();
    }
  }

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Brand value) onBrandSelectionUpdate,
    required TResult Function(String value) onBrandSearchUpdate,
    required TResult Function(String value) onBrandChipRemove,
    required TResult Function(int index) onProductImageSlide,
    required TResult Function(int index) onColorSelected,
    required TResult Function(int index) onStorageSelected,
    required TResult Function(ExpansionType type) onExpandToggled,
    required TResult Function(FlowType flow) onResetFlow,
  }) {
    final _that = this;
    switch (_that) {
      case _Init():
        return init();
      case _OnBrandSelectionUpdate():
        return onBrandSelectionUpdate(_that.value);
      case _OnBrandSearchUpdate():
        return onBrandSearchUpdate(_that.value);
      case _OnBrandChipRemove():
        return onBrandChipRemove(_that.value);
      case _OnProductImageSlide():
        return onProductImageSlide(_that.index);
      case _OnColorSelected():
        return onColorSelected(_that.index);
      case _OnStorageSelected():
        return onStorageSelected(_that.index);
      case _OnExpandToggled():
        return onExpandToggled(_that.type);
      case _OnResetFlow():
        return onResetFlow(_that.flow);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Brand value)? onBrandSelectionUpdate,
    TResult? Function(String value)? onBrandSearchUpdate,
    TResult? Function(String value)? onBrandChipRemove,
    TResult? Function(int index)? onProductImageSlide,
    TResult? Function(int index)? onColorSelected,
    TResult? Function(int index)? onStorageSelected,
    TResult? Function(ExpansionType type)? onExpandToggled,
    TResult? Function(FlowType flow)? onResetFlow,
  }) {
    final _that = this;
    switch (_that) {
      case _Init() when init != null:
        return init();
      case _OnBrandSelectionUpdate() when onBrandSelectionUpdate != null:
        return onBrandSelectionUpdate(_that.value);
      case _OnBrandSearchUpdate() when onBrandSearchUpdate != null:
        return onBrandSearchUpdate(_that.value);
      case _OnBrandChipRemove() when onBrandChipRemove != null:
        return onBrandChipRemove(_that.value);
      case _OnProductImageSlide() when onProductImageSlide != null:
        return onProductImageSlide(_that.index);
      case _OnColorSelected() when onColorSelected != null:
        return onColorSelected(_that.index);
      case _OnStorageSelected() when onStorageSelected != null:
        return onStorageSelected(_that.index);
      case _OnExpandToggled() when onExpandToggled != null:
        return onExpandToggled(_that.type);
      case _OnResetFlow() when onResetFlow != null:
        return onResetFlow(_that.flow);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Init implements ProductEvent {
  const _Init();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductEvent.init()';
  }
}

/// @nodoc

class _OnBrandSelectionUpdate implements ProductEvent {
  const _OnBrandSelectionUpdate({required this.value});

  final Brand value;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnBrandSelectionUpdateCopyWith<_OnBrandSelectionUpdate> get copyWith =>
      __$OnBrandSelectionUpdateCopyWithImpl<_OnBrandSelectionUpdate>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnBrandSelectionUpdate &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ProductEvent.onBrandSelectionUpdate(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$OnBrandSelectionUpdateCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnBrandSelectionUpdateCopyWith(
    _OnBrandSelectionUpdate value,
    $Res Function(_OnBrandSelectionUpdate) _then,
  ) = __$OnBrandSelectionUpdateCopyWithImpl;
  @useResult
  $Res call({Brand value});

  $BrandCopyWith<$Res> get value;
}

/// @nodoc
class __$OnBrandSelectionUpdateCopyWithImpl<$Res>
    implements _$OnBrandSelectionUpdateCopyWith<$Res> {
  __$OnBrandSelectionUpdateCopyWithImpl(this._self, this._then);

  final _OnBrandSelectionUpdate _self;
  final $Res Function(_OnBrandSelectionUpdate) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      _OnBrandSelectionUpdate(
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as Brand,
      ),
    );
  }

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res> get value {
    return $BrandCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc

class _OnBrandSearchUpdate implements ProductEvent {
  const _OnBrandSearchUpdate({required this.value});

  final String value;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnBrandSearchUpdateCopyWith<_OnBrandSearchUpdate> get copyWith =>
      __$OnBrandSearchUpdateCopyWithImpl<_OnBrandSearchUpdate>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnBrandSearchUpdate &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ProductEvent.onBrandSearchUpdate(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$OnBrandSearchUpdateCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnBrandSearchUpdateCopyWith(
    _OnBrandSearchUpdate value,
    $Res Function(_OnBrandSearchUpdate) _then,
  ) = __$OnBrandSearchUpdateCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$OnBrandSearchUpdateCopyWithImpl<$Res>
    implements _$OnBrandSearchUpdateCopyWith<$Res> {
  __$OnBrandSearchUpdateCopyWithImpl(this._self, this._then);

  final _OnBrandSearchUpdate _self;
  final $Res Function(_OnBrandSearchUpdate) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      _OnBrandSearchUpdate(
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _OnBrandChipRemove implements ProductEvent {
  const _OnBrandChipRemove({required this.value});

  final String value;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnBrandChipRemoveCopyWith<_OnBrandChipRemove> get copyWith =>
      __$OnBrandChipRemoveCopyWithImpl<_OnBrandChipRemove>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnBrandChipRemove &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ProductEvent.onBrandChipRemove(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$OnBrandChipRemoveCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnBrandChipRemoveCopyWith(
    _OnBrandChipRemove value,
    $Res Function(_OnBrandChipRemove) _then,
  ) = __$OnBrandChipRemoveCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$OnBrandChipRemoveCopyWithImpl<$Res>
    implements _$OnBrandChipRemoveCopyWith<$Res> {
  __$OnBrandChipRemoveCopyWithImpl(this._self, this._then);

  final _OnBrandChipRemove _self;
  final $Res Function(_OnBrandChipRemove) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? value = null}) {
    return _then(
      _OnBrandChipRemove(
        value: null == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _OnProductImageSlide implements ProductEvent {
  const _OnProductImageSlide({required this.index});

  final int index;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnProductImageSlideCopyWith<_OnProductImageSlide> get copyWith =>
      __$OnProductImageSlideCopyWithImpl<_OnProductImageSlide>(
        this,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnProductImageSlide &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'ProductEvent.onProductImageSlide(index: $index)';
  }
}

/// @nodoc
abstract mixin class _$OnProductImageSlideCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnProductImageSlideCopyWith(
    _OnProductImageSlide value,
    $Res Function(_OnProductImageSlide) _then,
  ) = __$OnProductImageSlideCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$OnProductImageSlideCopyWithImpl<$Res>
    implements _$OnProductImageSlideCopyWith<$Res> {
  __$OnProductImageSlideCopyWithImpl(this._self, this._then);

  final _OnProductImageSlide _self;
  final $Res Function(_OnProductImageSlide) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? index = null}) {
    return _then(
      _OnProductImageSlide(
        index: null == index
            ? _self.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _OnColorSelected implements ProductEvent {
  const _OnColorSelected({required this.index});

  final int index;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnColorSelectedCopyWith<_OnColorSelected> get copyWith =>
      __$OnColorSelectedCopyWithImpl<_OnColorSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnColorSelected &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'ProductEvent.onColorSelected(index: $index)';
  }
}

/// @nodoc
abstract mixin class _$OnColorSelectedCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnColorSelectedCopyWith(
    _OnColorSelected value,
    $Res Function(_OnColorSelected) _then,
  ) = __$OnColorSelectedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$OnColorSelectedCopyWithImpl<$Res>
    implements _$OnColorSelectedCopyWith<$Res> {
  __$OnColorSelectedCopyWithImpl(this._self, this._then);

  final _OnColorSelected _self;
  final $Res Function(_OnColorSelected) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? index = null}) {
    return _then(
      _OnColorSelected(
        index: null == index
            ? _self.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _OnStorageSelected implements ProductEvent {
  const _OnStorageSelected({required this.index});

  final int index;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnStorageSelectedCopyWith<_OnStorageSelected> get copyWith =>
      __$OnStorageSelectedCopyWithImpl<_OnStorageSelected>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnStorageSelected &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'ProductEvent.onStorageSelected(index: $index)';
  }
}

/// @nodoc
abstract mixin class _$OnStorageSelectedCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnStorageSelectedCopyWith(
    _OnStorageSelected value,
    $Res Function(_OnStorageSelected) _then,
  ) = __$OnStorageSelectedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$OnStorageSelectedCopyWithImpl<$Res>
    implements _$OnStorageSelectedCopyWith<$Res> {
  __$OnStorageSelectedCopyWithImpl(this._self, this._then);

  final _OnStorageSelected _self;
  final $Res Function(_OnStorageSelected) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? index = null}) {
    return _then(
      _OnStorageSelected(
        index: null == index
            ? _self.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _OnExpandToggled implements ProductEvent {
  const _OnExpandToggled({required this.type});

  final ExpansionType type;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnExpandToggledCopyWith<_OnExpandToggled> get copyWith =>
      __$OnExpandToggledCopyWithImpl<_OnExpandToggled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnExpandToggled &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'ProductEvent.onExpandToggled(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$OnExpandToggledCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnExpandToggledCopyWith(
    _OnExpandToggled value,
    $Res Function(_OnExpandToggled) _then,
  ) = __$OnExpandToggledCopyWithImpl;
  @useResult
  $Res call({ExpansionType type});
}

/// @nodoc
class __$OnExpandToggledCopyWithImpl<$Res>
    implements _$OnExpandToggledCopyWith<$Res> {
  __$OnExpandToggledCopyWithImpl(this._self, this._then);

  final _OnExpandToggled _self;
  final $Res Function(_OnExpandToggled) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? type = null}) {
    return _then(
      _OnExpandToggled(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ExpansionType,
      ),
    );
  }
}

/// @nodoc

class _OnResetFlow implements ProductEvent {
  const _OnResetFlow({required this.flow});

  final FlowType flow;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnResetFlowCopyWith<_OnResetFlow> get copyWith =>
      __$OnResetFlowCopyWithImpl<_OnResetFlow>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnResetFlow &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flow);

  @override
  String toString() {
    return 'ProductEvent.onResetFlow(flow: $flow)';
  }
}

/// @nodoc
abstract mixin class _$OnResetFlowCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$OnResetFlowCopyWith(
    _OnResetFlow value,
    $Res Function(_OnResetFlow) _then,
  ) = __$OnResetFlowCopyWithImpl;
  @useResult
  $Res call({FlowType flow});
}

/// @nodoc
class __$OnResetFlowCopyWithImpl<$Res> implements _$OnResetFlowCopyWith<$Res> {
  __$OnResetFlowCopyWithImpl(this._self, this._then);

  final _OnResetFlow _self;
  final $Res Function(_OnResetFlow) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({Object? flow = null}) {
    return _then(
      _OnResetFlow(
        flow: null == flow
            ? _self.flow
            : flow // ignore: cast_nullable_to_non_nullable
                  as FlowType,
      ),
    );
  }
}

/// @nodoc
mixin _$ProductState {
  Brand get selectedBrand;
  List<String> get selectedEnteredBrands;
  List<Brand> get selectedBrands;
  int get currentProductImageIndex;
  int get selectedColorIndex;
  int get selectedStorageIndex;
  bool get isSpecificationExpanded;
  bool get isImageBannerExpanded;
  bool get isEffectivePriceExpanded;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductStateCopyWith<ProductState> get copyWith =>
      _$ProductStateCopyWithImpl<ProductState>(
        this as ProductState,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductState &&
            (identical(other.selectedBrand, selectedBrand) ||
                other.selectedBrand == selectedBrand) &&
            const DeepCollectionEquality().equals(
              other.selectedEnteredBrands,
              selectedEnteredBrands,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedBrands,
              selectedBrands,
            ) &&
            (identical(
                  other.currentProductImageIndex,
                  currentProductImageIndex,
                ) ||
                other.currentProductImageIndex == currentProductImageIndex) &&
            (identical(other.selectedColorIndex, selectedColorIndex) ||
                other.selectedColorIndex == selectedColorIndex) &&
            (identical(other.selectedStorageIndex, selectedStorageIndex) ||
                other.selectedStorageIndex == selectedStorageIndex) &&
            (identical(
                  other.isSpecificationExpanded,
                  isSpecificationExpanded,
                ) ||
                other.isSpecificationExpanded == isSpecificationExpanded) &&
            (identical(other.isImageBannerExpanded, isImageBannerExpanded) ||
                other.isImageBannerExpanded == isImageBannerExpanded) &&
            (identical(
                  other.isEffectivePriceExpanded,
                  isEffectivePriceExpanded,
                ) ||
                other.isEffectivePriceExpanded == isEffectivePriceExpanded));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedBrand,
    const DeepCollectionEquality().hash(selectedEnteredBrands),
    const DeepCollectionEquality().hash(selectedBrands),
    currentProductImageIndex,
    selectedColorIndex,
    selectedStorageIndex,
    isSpecificationExpanded,
    isImageBannerExpanded,
    isEffectivePriceExpanded,
  );

  @override
  String toString() {
    return 'ProductState(selectedBrand: $selectedBrand, selectedEnteredBrands: $selectedEnteredBrands, selectedBrands: $selectedBrands, currentProductImageIndex: $currentProductImageIndex, selectedColorIndex: $selectedColorIndex, selectedStorageIndex: $selectedStorageIndex, isSpecificationExpanded: $isSpecificationExpanded, isImageBannerExpanded: $isImageBannerExpanded, isEffectivePriceExpanded: $isEffectivePriceExpanded)';
  }
}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
    ProductState value,
    $Res Function(ProductState) _then,
  ) = _$ProductStateCopyWithImpl;
  @useResult
  $Res call({
    Brand selectedBrand,
    List<String> selectedEnteredBrands,
    List<Brand> selectedBrands,
    int currentProductImageIndex,
    int selectedColorIndex,
    int selectedStorageIndex,
    bool isSpecificationExpanded,
    bool isImageBannerExpanded,
    bool isEffectivePriceExpanded,
  });

  $BrandCopyWith<$Res> get selectedBrand;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBrand = null,
    Object? selectedEnteredBrands = null,
    Object? selectedBrands = null,
    Object? currentProductImageIndex = null,
    Object? selectedColorIndex = null,
    Object? selectedStorageIndex = null,
    Object? isSpecificationExpanded = null,
    Object? isImageBannerExpanded = null,
    Object? isEffectivePriceExpanded = null,
  }) {
    return _then(
      _self.copyWith(
        selectedBrand: null == selectedBrand
            ? _self.selectedBrand
            : selectedBrand // ignore: cast_nullable_to_non_nullable
                  as Brand,
        selectedEnteredBrands: null == selectedEnteredBrands
            ? _self.selectedEnteredBrands
            : selectedEnteredBrands // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        selectedBrands: null == selectedBrands
            ? _self.selectedBrands
            : selectedBrands // ignore: cast_nullable_to_non_nullable
                  as List<Brand>,
        currentProductImageIndex: null == currentProductImageIndex
            ? _self.currentProductImageIndex
            : currentProductImageIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedColorIndex: null == selectedColorIndex
            ? _self.selectedColorIndex
            : selectedColorIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedStorageIndex: null == selectedStorageIndex
            ? _self.selectedStorageIndex
            : selectedStorageIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        isSpecificationExpanded: null == isSpecificationExpanded
            ? _self.isSpecificationExpanded
            : isSpecificationExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
        isImageBannerExpanded: null == isImageBannerExpanded
            ? _self.isImageBannerExpanded
            : isImageBannerExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
        isEffectivePriceExpanded: null == isEffectivePriceExpanded
            ? _self.isEffectivePriceExpanded
            : isEffectivePriceExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res> get selectedBrand {
    return $BrandCopyWith<$Res>(_self.selectedBrand, (value) {
      return _then(_self.copyWith(selectedBrand: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProductState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
      Brand selectedBrand,
      List<String> selectedEnteredBrands,
      List<Brand> selectedBrands,
      int currentProductImageIndex,
      int selectedColorIndex,
      int selectedStorageIndex,
      bool isSpecificationExpanded,
      bool isImageBannerExpanded,
      bool isEffectivePriceExpanded,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
        return $default(
          _that.selectedBrand,
          _that.selectedEnteredBrands,
          _that.selectedBrands,
          _that.currentProductImageIndex,
          _that.selectedColorIndex,
          _that.selectedStorageIndex,
          _that.isSpecificationExpanded,
          _that.isImageBannerExpanded,
          _that.isEffectivePriceExpanded,
        );
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
      Brand selectedBrand,
      List<String> selectedEnteredBrands,
      List<Brand> selectedBrands,
      int currentProductImageIndex,
      int selectedColorIndex,
      int selectedStorageIndex,
      bool isSpecificationExpanded,
      bool isImageBannerExpanded,
      bool isEffectivePriceExpanded,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState():
        return $default(
          _that.selectedBrand,
          _that.selectedEnteredBrands,
          _that.selectedBrands,
          _that.currentProductImageIndex,
          _that.selectedColorIndex,
          _that.selectedStorageIndex,
          _that.isSpecificationExpanded,
          _that.isImageBannerExpanded,
          _that.isEffectivePriceExpanded,
        );
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
      Brand selectedBrand,
      List<String> selectedEnteredBrands,
      List<Brand> selectedBrands,
      int currentProductImageIndex,
      int selectedColorIndex,
      int selectedStorageIndex,
      bool isSpecificationExpanded,
      bool isImageBannerExpanded,
      bool isEffectivePriceExpanded,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProductState() when $default != null:
        return $default(
          _that.selectedBrand,
          _that.selectedEnteredBrands,
          _that.selectedBrands,
          _that.currentProductImageIndex,
          _that.selectedColorIndex,
          _that.selectedStorageIndex,
          _that.isSpecificationExpanded,
          _that.isImageBannerExpanded,
          _that.isEffectivePriceExpanded,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProductState extends ProductState {
  const _ProductState({
    required this.selectedBrand,
    required final List<String> selectedEnteredBrands,
    required final List<Brand> selectedBrands,
    required this.currentProductImageIndex,
    required this.selectedColorIndex,
    required this.selectedStorageIndex,
    required this.isSpecificationExpanded,
    required this.isImageBannerExpanded,
    required this.isEffectivePriceExpanded,
  }) : _selectedEnteredBrands = selectedEnteredBrands,
       _selectedBrands = selectedBrands,
       super._();

  @override
  final Brand selectedBrand;
  final List<String> _selectedEnteredBrands;
  @override
  List<String> get selectedEnteredBrands {
    if (_selectedEnteredBrands is EqualUnmodifiableListView)
      return _selectedEnteredBrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedEnteredBrands);
  }

  final List<Brand> _selectedBrands;
  @override
  List<Brand> get selectedBrands {
    if (_selectedBrands is EqualUnmodifiableListView) return _selectedBrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedBrands);
  }

  @override
  final int currentProductImageIndex;
  @override
  final int selectedColorIndex;
  @override
  final int selectedStorageIndex;
  @override
  final bool isSpecificationExpanded;
  @override
  final bool isImageBannerExpanded;
  @override
  final bool isEffectivePriceExpanded;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductState &&
            (identical(other.selectedBrand, selectedBrand) ||
                other.selectedBrand == selectedBrand) &&
            const DeepCollectionEquality().equals(
              other._selectedEnteredBrands,
              _selectedEnteredBrands,
            ) &&
            const DeepCollectionEquality().equals(
              other._selectedBrands,
              _selectedBrands,
            ) &&
            (identical(
                  other.currentProductImageIndex,
                  currentProductImageIndex,
                ) ||
                other.currentProductImageIndex == currentProductImageIndex) &&
            (identical(other.selectedColorIndex, selectedColorIndex) ||
                other.selectedColorIndex == selectedColorIndex) &&
            (identical(other.selectedStorageIndex, selectedStorageIndex) ||
                other.selectedStorageIndex == selectedStorageIndex) &&
            (identical(
                  other.isSpecificationExpanded,
                  isSpecificationExpanded,
                ) ||
                other.isSpecificationExpanded == isSpecificationExpanded) &&
            (identical(other.isImageBannerExpanded, isImageBannerExpanded) ||
                other.isImageBannerExpanded == isImageBannerExpanded) &&
            (identical(
                  other.isEffectivePriceExpanded,
                  isEffectivePriceExpanded,
                ) ||
                other.isEffectivePriceExpanded == isEffectivePriceExpanded));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    selectedBrand,
    const DeepCollectionEquality().hash(_selectedEnteredBrands),
    const DeepCollectionEquality().hash(_selectedBrands),
    currentProductImageIndex,
    selectedColorIndex,
    selectedStorageIndex,
    isSpecificationExpanded,
    isImageBannerExpanded,
    isEffectivePriceExpanded,
  );

  @override
  String toString() {
    return 'ProductState(selectedBrand: $selectedBrand, selectedEnteredBrands: $selectedEnteredBrands, selectedBrands: $selectedBrands, currentProductImageIndex: $currentProductImageIndex, selectedColorIndex: $selectedColorIndex, selectedStorageIndex: $selectedStorageIndex, isSpecificationExpanded: $isSpecificationExpanded, isImageBannerExpanded: $isImageBannerExpanded, isEffectivePriceExpanded: $isEffectivePriceExpanded)';
  }
}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
    _ProductState value,
    $Res Function(_ProductState) _then,
  ) = __$ProductStateCopyWithImpl;
  @override
  @useResult
  $Res call({
    Brand selectedBrand,
    List<String> selectedEnteredBrands,
    List<Brand> selectedBrands,
    int currentProductImageIndex,
    int selectedColorIndex,
    int selectedStorageIndex,
    bool isSpecificationExpanded,
    bool isImageBannerExpanded,
    bool isEffectivePriceExpanded,
  });

  @override
  $BrandCopyWith<$Res> get selectedBrand;
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedBrand = null,
    Object? selectedEnteredBrands = null,
    Object? selectedBrands = null,
    Object? currentProductImageIndex = null,
    Object? selectedColorIndex = null,
    Object? selectedStorageIndex = null,
    Object? isSpecificationExpanded = null,
    Object? isImageBannerExpanded = null,
    Object? isEffectivePriceExpanded = null,
  }) {
    return _then(
      _ProductState(
        selectedBrand: null == selectedBrand
            ? _self.selectedBrand
            : selectedBrand // ignore: cast_nullable_to_non_nullable
                  as Brand,
        selectedEnteredBrands: null == selectedEnteredBrands
            ? _self._selectedEnteredBrands
            : selectedEnteredBrands // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        selectedBrands: null == selectedBrands
            ? _self._selectedBrands
            : selectedBrands // ignore: cast_nullable_to_non_nullable
                  as List<Brand>,
        currentProductImageIndex: null == currentProductImageIndex
            ? _self.currentProductImageIndex
            : currentProductImageIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedColorIndex: null == selectedColorIndex
            ? _self.selectedColorIndex
            : selectedColorIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        selectedStorageIndex: null == selectedStorageIndex
            ? _self.selectedStorageIndex
            : selectedStorageIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        isSpecificationExpanded: null == isSpecificationExpanded
            ? _self.isSpecificationExpanded
            : isSpecificationExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
        isImageBannerExpanded: null == isImageBannerExpanded
            ? _self.isImageBannerExpanded
            : isImageBannerExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
        isEffectivePriceExpanded: null == isEffectivePriceExpanded
            ? _self.isEffectivePriceExpanded
            : isEffectivePriceExpanded // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res> get selectedBrand {
    return $BrandCopyWith<$Res>(_self.selectedBrand, (value) {
      return _then(_self.copyWith(selectedBrand: value));
    });
  }
}

// dart format on
