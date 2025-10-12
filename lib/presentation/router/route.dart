import 'package:go_router/go_router.dart';
import 'package:tortoise_ui/domain/product/entities/product.dart';
import 'package:tortoise_ui/presentation/home/home_page.dart';
import 'package:tortoise_ui/presentation/product_details/product_details_page.dart';
import 'package:tortoise_ui/presentation/landing/landing_page.dart';

final goRouter = GoRouter(
  initialLocation: AppRoutes.landing,
  routes: [
    GoRoute(
      path: AppRoutes.landing,
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.productDetails,
      builder: (context, state) {
        final extra = state.extra as Map<String, Product>;
        final product = extra['product'] ?? Product.empty();
        return ProductDetailsPage(product: product);
      },
    ),
  ],
);

class AppRoutes {
  static const String landing = '/';
  static const String home = '/home';
  static const String productDetails = '/product_details';
}
