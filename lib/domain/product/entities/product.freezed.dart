// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Product {

 String get name; List<String> get images; List<Color> get colorOptions; List<String> get storageOptions; List<Specifications> get specifications;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.colorOptions, colorOptions)&&const DeepCollectionEquality().equals(other.storageOptions, storageOptions)&&const DeepCollectionEquality().equals(other.specifications, specifications));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(colorOptions),const DeepCollectionEquality().hash(storageOptions),const DeepCollectionEquality().hash(specifications));

@override
String toString() {
  return 'Product(name: $name, images: $images, colorOptions: $colorOptions, storageOptions: $storageOptions, specifications: $specifications)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String name, List<String> images, List<Color> colorOptions, List<String> storageOptions, List<Specifications> specifications
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? images = null,Object? colorOptions = null,Object? storageOptions = null,Object? specifications = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,colorOptions: null == colorOptions ? _self.colorOptions : colorOptions // ignore: cast_nullable_to_non_nullable
as List<Color>,storageOptions: null == storageOptions ? _self.storageOptions : storageOptions // ignore: cast_nullable_to_non_nullable
as List<String>,specifications: null == specifications ? _self.specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<Specifications>,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {


@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}


@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}


@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}


@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<String> images,  List<Color> colorOptions,  List<String> storageOptions,  List<Specifications> specifications)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.name,_that.images,_that.colorOptions,_that.storageOptions,_that.specifications);case _:
  return orElse();

}
}


@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<String> images,  List<Color> colorOptions,  List<String> storageOptions,  List<Specifications> specifications)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.name,_that.images,_that.colorOptions,_that.storageOptions,_that.specifications);case _:
  throw StateError('Unexpected subclass');

}
}


@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<String> images,  List<Color> colorOptions,  List<String> storageOptions,  List<Specifications> specifications)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.name,_that.images,_that.colorOptions,_that.storageOptions,_that.specifications);case _:
  return null;

}
}

}

/// @nodoc


class _Product extends Product {
  const _Product({required this.name, required final  List<String> images, required final  List<Color> colorOptions, required final  List<String> storageOptions, required final  List<Specifications> specifications}): _images = images,_colorOptions = colorOptions,_storageOptions = storageOptions,_specifications = specifications,super._();
  

@override final  String name;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

 final  List<Color> _colorOptions;
@override List<Color> get colorOptions {
  if (_colorOptions is EqualUnmodifiableListView) return _colorOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colorOptions);
}

 final  List<String> _storageOptions;
@override List<String> get storageOptions {
  if (_storageOptions is EqualUnmodifiableListView) return _storageOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_storageOptions);
}

 final  List<Specifications> _specifications;
@override List<Specifications> get specifications {
  if (_specifications is EqualUnmodifiableListView) return _specifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specifications);
}


/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._colorOptions, _colorOptions)&&const DeepCollectionEquality().equals(other._storageOptions, _storageOptions)&&const DeepCollectionEquality().equals(other._specifications, _specifications));
}


@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_colorOptions),const DeepCollectionEquality().hash(_storageOptions),const DeepCollectionEquality().hash(_specifications));

@override
String toString() {
  return 'Product(name: $name, images: $images, colorOptions: $colorOptions, storageOptions: $storageOptions, specifications: $specifications)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String> images, List<Color> colorOptions, List<String> storageOptions, List<Specifications> specifications
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? images = null,Object? colorOptions = null,Object? storageOptions = null,Object? specifications = null,}) {
  return _then(_Product(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,colorOptions: null == colorOptions ? _self._colorOptions : colorOptions // ignore: cast_nullable_to_non_nullable
as List<Color>,storageOptions: null == storageOptions ? _self._storageOptions : storageOptions // ignore: cast_nullable_to_non_nullable
as List<String>,specifications: null == specifications ? _self._specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<Specifications>,
  ));
}


}

/// @nodoc
mixin _$Specifications {

 String get type; String get value; String get icon;
/// Create a copy of Specifications
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecificationsCopyWith<Specifications> get copyWith => _$SpecificationsCopyWithImpl<Specifications>(this as Specifications, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Specifications&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,type,value,icon);

@override
String toString() {
  return 'Specifications(type: $type, value: $value, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $SpecificationsCopyWith<$Res>  {
  factory $SpecificationsCopyWith(Specifications value, $Res Function(Specifications) _then) = _$SpecificationsCopyWithImpl;
@useResult
$Res call({
 String type, String value, String icon
});




}
/// @nodoc
class _$SpecificationsCopyWithImpl<$Res>
    implements $SpecificationsCopyWith<$Res> {
  _$SpecificationsCopyWithImpl(this._self, this._then);

  final Specifications _self;
  final $Res Function(Specifications) _then;

/// Create a copy of Specifications
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,Object? icon = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Specifications].
extension SpecificationsPatterns on Specifications {


@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Specifications value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Specifications() when $default != null:
return $default(_that);case _:
  return orElse();

}
}


@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Specifications value)  $default,){
final _that = this;
switch (_that) {
case _Specifications():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}


@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Specifications value)?  $default,){
final _that = this;
switch (_that) {
case _Specifications() when $default != null:
return $default(_that);case _:
  return null;

}
}


@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String value,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Specifications() when $default != null:
return $default(_that.type,_that.value,_that.icon);case _:
  return orElse();

}
}


@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String value,  String icon)  $default,) {final _that = this;
switch (_that) {
case _Specifications():
return $default(_that.type,_that.value,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}


@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String value,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _Specifications() when $default != null:
return $default(_that.type,_that.value,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _Specifications extends Specifications {
  const _Specifications({required this.type, required this.value, required this.icon}): super._();
  

@override final  String type;
@override final  String value;
@override final  String icon;

/// Create a copy of Specifications
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecificationsCopyWith<_Specifications> get copyWith => __$SpecificationsCopyWithImpl<_Specifications>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Specifications&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,type,value,icon);

@override
String toString() {
  return 'Specifications(type: $type, value: $value, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$SpecificationsCopyWith<$Res> implements $SpecificationsCopyWith<$Res> {
  factory _$SpecificationsCopyWith(_Specifications value, $Res Function(_Specifications) _then) = __$SpecificationsCopyWithImpl;
@override @useResult
$Res call({
 String type, String value, String icon
});




}
/// @nodoc
class __$SpecificationsCopyWithImpl<$Res>
    implements _$SpecificationsCopyWith<$Res> {
  __$SpecificationsCopyWithImpl(this._self, this._then);

  final _Specifications _self;
  final $Res Function(_Specifications) _then;

/// Create a copy of Specifications
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,Object? icon = null,}) {
  return _then(_Specifications(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
