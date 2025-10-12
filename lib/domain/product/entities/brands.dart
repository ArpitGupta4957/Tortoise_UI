import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tortoise_ui/presentation/core/utils/assets.dart';

part 'brands.freezed.dart';

@freezed
abstract class Brand with _$Brand {
  const Brand._();

  const factory Brand({required String name, required String iconPath}) =
      _Brand;

  factory Brand.empty() => const Brand(name: '', iconPath: '');

  static List<Brand> get dummyBrands => [
    const Brand(name: 'Apple', iconPath: Assets.appleLogo),
    const Brand(name: 'Google', iconPath: Assets.googleLogo),
    const Brand(name: 'Oneplus', iconPath: Assets.oneplusLogo),
    const Brand(name: 'Samsung', iconPath: Assets.samsungLogo),
  ];
}
