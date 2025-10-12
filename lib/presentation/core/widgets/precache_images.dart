import 'package:flutter/widgets.dart';
import 'package:tortoise_ui/domain/product/entities/product.dart';

/// Widget that precaches product images after the first frame to reduce
/// image loading jank. It does not block app startup; it schedules
/// precache work on the first frame.
class PrecacheImages extends StatefulWidget {
  final Widget child;
  const PrecacheImages({super.key, required this.child});

  @override
  State<PrecacheImages> createState() => _PrecacheImagesState();
}

class _PrecacheImagesState extends State<PrecacheImages> {
  bool _started = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_started) {
      _started = true;
      // Schedule after first frame so we have a context and the app is visible.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _precacheProductImages();
      });
    }
  }

  Future<void> _precacheProductImages() async {
    // Collect unique image asset paths from dummyProducts
    final images = <String>{};
    for (final p in Product.dummyProducts) {
      images.addAll(p.images);
    }

    for (final asset in images) {
      try {
        await precacheImage(AssetImage(asset), context);
      } catch (_) {
        // Ignore precache failures (assets not found, etc.)
      }
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
