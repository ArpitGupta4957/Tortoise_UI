import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:tortoise_ui/application/product/product_bloc.dart';
import 'package:tortoise_ui/domain/product/entities/brands.dart';
import 'package:tortoise_ui/domain/product/entities/product.dart';
import 'package:tortoise_ui/presentation/core/widgets/custom_app_bar.dart';
import 'package:tortoise_ui/presentation/router/route.dart';
import 'package:tortoise_ui/presentation/theme/base_colors.dart';
import 'package:tortoise_ui/presentation/theme/base_text_styles.dart';

part 'widgets/input_brand.dart';
part 'widgets/brands_list.dart';
part 'widgets/products_grid.dart';
part 'widgets/section_heading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F0EA),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: BaseColors.white,
                boxShadow: [
                  BoxShadow(
                    color: BaseColors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: CustomAppBar.widgetTitle(
                widgetTitle: const InputBrand(),
                showBackButton: false,
                height: 80,
              ),
            ),
            const Expanded(child: HomePageWidget()),
          ],
        ),
      ),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(heading: 'popular brands'),
            SizedBox(height: 16),
            BrandsList(),
            SizedBox(height: 16),
            SectionHeading(heading: 'Available devices'),
            SizedBox(height: 16),
            ProductsGrid(),
          ],
        ),
      ),
    );
  }
}
