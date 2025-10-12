part of '../product_details_page.dart';

class ShippingEstimate extends StatefulWidget {
  const ShippingEstimate({super.key});

  @override
  State<ShippingEstimate> createState() => _ShippingEstimateState();
}

class _ShippingEstimateState extends State<ShippingEstimate>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  double _position = 0.0;
  final GlobalKey _textKey = GlobalKey();
  double _textWidth = 0.0;
  double _containerWidth = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    );
    _controller.addListener(_updatePosition);
    WidgetsBinding.instance.addPostFrameCallback((_) => _measureText());
  }

  void _measureText() {
    final RenderBox? textBox =
        _textKey.currentContext?.findRenderObject() as RenderBox?;
    final RenderBox? containerBox = context.findRenderObject() as RenderBox?;
    if (textBox != null && containerBox != null) {
      setState(() {
        _textWidth = textBox.size.width;
        _containerWidth = containerBox.size.width;
        _controller.repeat();
      });
    }
  }

  void _updatePosition() {
    if (_textWidth == 0 || _containerWidth == 0) return;
    setState(() {
      _position =
          (_containerWidth + _textWidth) * (1 - _controller.value) - _textWidth;
    });
  }

  @override
  void dispose() {
    _controller.removeListener(_updatePosition);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Stack(
        children: [
          Positioned(
            left: _position,
            top: 0,
            bottom: 0,
            child: Row(
              key: _textKey,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  PhosphorIconsRegular.truck,
                  color: Color.fromARGB(255, 157, 108, 59),
                ),
                const SizedBox(width: 12),
                Text(
                  'Shipping starts from 19th September onwards!!',
                  style: BaseTextStyles.textSemiMediumSemiBold.copyWith(
                    color: BaseColors.darkyellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
