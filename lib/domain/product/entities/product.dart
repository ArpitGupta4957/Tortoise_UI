import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:tortoise_ui/presentation/core/utils/assets.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const Product._();

  const factory Product({
    required String name,
    required List<String> images,
    required List<Color> colorOptions,
    required List<String> storageOptions,
    required List<Specifications> specifications,
  }) = _Product;

  factory Product.empty() => const Product(
    name: '',
    images: <String>[],
    colorOptions: <Color>[],
    storageOptions: <String>[],
    specifications: <Specifications>[],
  );

  static List<Product> get dummyProducts => [
    const Product(
      name: 'iPhone 16',
      images: [
        Assets.iphone16,
        Assets.iphone16Plus,
        Assets.iphone16Pro,
        Assets.iphone16ProMax,
      ],
      colorOptions: [
        Color(0xFF464A4C), // Space Gray
        Color(0xFFD0DBCC), // Mint
        Color(0xFFEEE9CC), // Golden
        Color(0xFFEDD4D7), // Rose Gold
        Color(0xFFD6DDE0), // Silver
      ],
      storageOptions: ['128 GB', '256 GB', '512 GB', '1 TB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '6.1 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '48 MP + 12 MP Dual Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '128 GB, 6 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(type: 'Battery', value: '3200 mAh', icon: 'battery'),
        Specifications(
          type: 'Connectivity',
          value: '5G, Wi-Fi 6E, Bluetooth 5.3',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'iPhone 16 Plus',
      images: [
        Assets.iphone16Plus,
        Assets.iphone16,
        Assets.iphone16Pro,
        Assets.iphone16ProMax,
      ],
      colorOptions: [
        Color(0xFFD0DBCC), // Mint
        Color(0xFF464A4C), // Space Gray
        Color(0xFFEDD4D7), // Rose Gold
      ],
      storageOptions: ['128 GB', '256 GB', '512 GB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '6.7 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '48 MP + 12 MP Dual Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '128 GB, 6 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(type: 'Battery', value: '4323 mAh', icon: 'battery'),
        Specifications(
          type: 'Connectivity',
          value: '5G, Wi-Fi 6E, Bluetooth 5.3',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'iPhone 16 Pro',
      images: [
        Assets.iphone16Pro,
        Assets.iphone16,
        Assets.iphone16Plus,
        Assets.iphone16ProMax,
      ],
      colorOptions: [
        Color(0xFFEEE9CC), // Golden
        Color(0xFFD6DDE0), // Silver
        Color(0xFFD0DBCC), // Mint
        Color(0xFF464A4C), // Space Gray
      ],
      storageOptions: ['256 GB', '512 GB', '1 TB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '6.1 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '48 MP + 12 MP + 12 MP Triple Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '256 GB, 8 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(type: 'Battery', value: '3095 mAh', icon: 'battery'),
        Specifications(
          type: 'Connectivity',
          value: '5G, Wi-Fi 6E, Bluetooth 5.3',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'iPhone 16 Pro Max',
      images: [
        Assets.iphone16ProMax,
        Assets.iphone16Plus,
        Assets.iphone16,
        Assets.iphone16Pro,
      ],
      colorOptions: [
        Color(0xFFEDD4D7), // Rose Gold
        Color(0xFFD6DDE0), // Silver
      ],
      storageOptions: ['256 GB', '512 GB', '1 TB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '6.7 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '48 MP + 12 MP + 12 MP Triple Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '256 GB, 8 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(type: 'Battery', value: '4323 mAh', icon: 'battery'),
        Specifications(
          type: 'Connectivity',
          value: '5G, Wi-Fi 6E, Bluetooth 5.3',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'MacBook Pro',
      images: [Assets.macbookPro, Assets.macbookAir2024],
      colorOptions: [
        Color(0xFFD6DDE0), // Silver
        Color(0xFFD0DBCC), // Mint
      ],
      storageOptions: ['256 GB', '512 GB', '1 TB', '2 TB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '14.2 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '1080p FaceTime HD Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '512 GB, 16 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(
          type: 'Battery',
          value: 'Up to 17 hours',
          icon: 'battery',
        ),
        Specifications(
          type: 'Connectivity',
          value: 'Wi-Fi 6E, Bluetooth 5.3, Thunderbolt 4',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'iPad Pro',
      images: [Assets.ipadPro, Assets.ipadPro5thGen],
      colorOptions: [
        Color(0xFF464A4C), // Space Gray
        Color(0xFFEEE9CC), // Golden
        Color(0xFFD0DBCC), // Mint
      ],
      storageOptions: ['128 GB', '256 GB', '512 GB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '11 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '12 MP Wide and 10 MP Ultra Wide',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '128 GB, 8 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(
          type: 'Battery',
          value: 'Up to 10 hours',
          icon: 'battery',
        ),
        Specifications(
          type: 'Connectivity',
          value: 'Wi-Fi 6E, Bluetooth 5.3, 5G',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'iPhone 15',
      images: [Assets.iphone15, Assets.iphone15Plus],
      colorOptions: [
        Color(0xFFEDD4D7), // Rose Gold
        Color(0xFFD0DBCC), // Mint
        Color(0xFFEEE9CC), // Golden
        Color(0xFFD6DDE0), // Silver
      ],
      storageOptions: ['128 GB', '256 GB', '512 GB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '6.1 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '48 MP + 12 MP Dual Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '128 GB, 6 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(type: 'Battery', value: '3200 mAh', icon: 'battery'),
        Specifications(
          type: 'Connectivity',
          value: '5G, Wi-Fi 6E, Bluetooth 5.3',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'iPhone 15 Plus',
      images: [Assets.iphone15Plus, Assets.iphone15],
      colorOptions: [
        Color(0xFFD0DBCC), // Mint
        Color(0xFF464A4C), // Space Gray
      ],
      storageOptions: ['128 GB', '256 GB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '6.7 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '48 MP + 12 MP Dual Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '128 GB, 6 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(type: 'Battery', value: '4323 mAh', icon: 'battery'),
        Specifications(
          type: 'Connectivity',
          value: '5G, Wi-Fi 6E, Bluetooth 5.3',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'iPad Pro 5th Gen',
      images: [Assets.ipadPro5thGen, Assets.ipadPro],
      colorOptions: [
        Color(0xFFEEE9CC), // Golden
        Color(0xFFD6DDE0), // Silver
        Color(0xFFEDD4D7), // Rose Gold
      ],
      storageOptions: ['128 GB', '256 GB', '512 GB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '12.9 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '12 MP Wide and 10 MP Ultra Wide',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '256 GB, 8 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(
          type: 'Battery',
          value: 'Up to 10 hours',
          icon: 'battery',
        ),
        Specifications(
          type: 'Connectivity',
          value: 'Wi-Fi 6E, Bluetooth 5.3, 5G',
          icon: 'connectivity',
        ),
      ],
    ),
    const Product(
      name: 'MacBook Air 2024',
      images: [Assets.macbookAir2024, Assets.macbookPro],
      colorOptions: [
        Color(0xFFD6DDE0), // Silver
        Color(0xFFD0DBCC), // Mint
        Color(0xFF464A4C), // Space Gray
      ],
      storageOptions: ['256 GB', '512 GB', '1 TB'],
      specifications: [
        Specifications(
          type: 'Screen Size',
          value: '13.6 inches',
          icon: 'screenSize',
        ),
        Specifications(
          type: 'Camera',
          value: '1080p FaceTime HD Camera',
          icon: 'camera',
        ),
        Specifications(
          type: 'Storage & RAM',
          value: '256 GB, 8 GB RAM',
          icon: 'storageAndRam',
        ),
        Specifications(
          type: 'Battery',
          value: 'Up to 18 hours',
          icon: 'battery',
        ),
        Specifications(
          type: 'Connectivity',
          value: 'Wi-Fi 6E, Bluetooth 5.3, Thunderbolt 4',
          icon: 'connectivity',
        ),
      ],
    ),
  ];
}

@freezed
abstract class Specifications with _$Specifications {
  const Specifications._();

  const factory Specifications({
    required String type,
    required String value,
    required String icon,
  }) = _Specifications;

  factory Specifications.empty() =>
      const Specifications(type: '', value: '', icon: '');

  IconData get iconData {
    switch (type.toLowerCase()) {
      case 'screenSize':
        return PhosphorIconsRegular.arrowsOutSimple;
      case 'camera':
        return PhosphorIconsRegular.camera;
      case 'storageAndRam':
        return PhosphorIconsRegular.database;
      case 'battery':
        return PhosphorIconsRegular.batteryEmpty;
      case 'connectivity':
        return PhosphorIconsRegular.cellSignalFull;
      default:
        return PhosphorIconsRegular.question;
    }
  }
}
