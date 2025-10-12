import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:tortoise_ui/application/product/product_bloc.dart';
import 'package:tortoise_ui/domain/product/entities/product.dart';
import 'package:tortoise_ui/presentation/core/utils/assets.dart';
import 'package:tortoise_ui/presentation/core/widgets/custom_app_bar.dart';
import 'package:tortoise_ui/presentation/core/widgets/custom_dotted_line.dart';
import 'package:tortoise_ui/presentation/core/widgets/expansion_button.dart';
import 'package:tortoise_ui/presentation/theme/base_colors.dart';

import 'dart:math' as math;
import 'package:tortoise_ui/presentation/theme/base_text_styles.dart';

part 'widgets/shipping_estimates.dart';
part 'widgets/product_image_carousel.dart';
part 'widgets/protected_with_tortoise.dart';
part 'widgets/pick_color.dart';
part 'widgets/pick_storage.dart';
part 'widgets/image_banner.dart';
part 'widgets/specifications_view.dart';
part 'widgets/add_to_cart.dart';
part 'effective_price_sheet/effective_price_sheet.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.product});
  final Product product;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(
      const ProductEvent.onResetFlow(flow: FlowType.productDetails),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.backGroundWhite,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar.textTitle(
              textTitle: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Text(
                      widget.product.name,
                      style: BaseTextStyles.textHugeBold.copyWith(
                        color: BaseColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      icon: const Icon(PhosphorIconsRegular.shoppingCart),
                      color: BaseColors.black,
                      onPressed: () {
                        //Implement cart navigation
                      },
                    ),
                  ),
                ],
              ),
              showBackButton: false,
            ),
            ProductDetailsPageWidget(product: widget.product),
            const AddToCart(),
          ],
        ),
      ),
    );
  }
}

class ProductDetailsPageWidget extends StatelessWidget {
  const ProductDetailsPageWidget({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShippingEstimate(),
            ProductImageCarousel(imageUrls: product.images),
            const SizedBox(height: 16),
            const ProtectedWithTortoise(),
            const SizedBox(height: 32),
            PickColor(colorOptions: product.colorOptions),
            const SizedBox(height: 32),
            PickStorage(storageOptions: product.storageOptions),
            const SizedBox(height: 32),
            SpecificationsView(specifications: product.specifications),
            const SizedBox(height: 16),
            const ImageBanner(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
