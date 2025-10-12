part of '../product_details_page.dart';

class _AddToCartSuccessDialog extends StatefulWidget {
  const _AddToCartSuccessDialog();

  @override
  State<_AddToCartSuccessDialog> createState() =>
      _AddToCartSuccessDialogState();
}

class _AddToCartSuccessDialogState extends State<_AddToCartSuccessDialog>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 12000),
    )..forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    Future.delayed(const Duration(milliseconds: 12000), () {
      if (mounted) Navigator.of(context).pop();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Confetti burst (optional, can remove if only GIF is needed)
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return CustomPaint(painter: _ConfettiPainter(_animation.value));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Confetti GIF in foreground
                Image.asset(
                  'assets/icons/Confetti.gif',
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 8),
                Icon(
                  Icons.check_circle,
                  color: BaseColors.brightGreen,
                  size: 48,
                ),
                const SizedBox(height: 12),
                Text(
                  'Successfully added to cart!',
                  style: BaseTextStyles.textLargeBold.copyWith(
                    color: BaseColors.brightGreen,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Simple confetti painter for celebratory effect
class _ConfettiPainter extends CustomPainter {
  final double progress;
  _ConfettiPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orange,
      Colors.purple,
      Colors.yellow,
    ];
    final center = Offset(size.width / 2, size.height / 2);
    for (int i = 0; i < 18; i++) {
      final angle = (i / 18) * 2 * math.pi;
      final radius = 60 * progress;
      final offset = Offset(
        center.dx + radius * (1.2 + 0.2 * (i % 2)) * math.cos(angle),
        center.dy + radius * (1.2 + 0.2 * (i % 2)) * math.sin(angle),
      );
      final paint = Paint()
        ..color = colors[i % colors.length]
        ..style = PaintingStyle.fill;
      canvas.drawCircle(offset, 6 * (1 - progress * 0.5), paint);
    }
  }

  @override
  bool shouldRepaint(_ConfettiPainter oldDelegate) =>
      oldDelegate.progress != progress;
}

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      decoration: BoxDecoration(
        color: BaseColors.backGroundWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(children: [_DevicePrice(), _EffectivePrice()]),
          const SizedBox(height: 8), // reduced vertical gap
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                // Show a fun pop-up with confetti
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) => const _AddToCartSuccessDialog(),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
              child: Text(
                'Add to Cart',
                style: BaseTextStyles.textLargeBold.copyWith(
                  color: BaseColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EffectivePrice extends StatelessWidget {
  const _EffectivePrice();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        onTap: () {
          EffectivePriceSheet.show(context);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: BaseColors.brightGreen, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        title: Row(
          children: [
            Expanded(
              child: Text(
                'Effective Price'.toUpperCase(),
                style: BaseTextStyles.textSmallBold.copyWith(
                  color: BaseColors.primaryBlack,
                ),
              ),
            ),
            const Icon(
              PhosphorIconsFill.caretCircleRight,
              color: BaseColors.primaryGreen,
            ),
          ],
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '₹ 92,483',
              style: BaseTextStyles.textExtraLargeBold.copyWith(
                color: BaseColors.primaryGreen,
              ),
            ),
            Flexible(
              child: Text(
                'See impact in net-salary',
                style: BaseTextStyles.textSmallSemiBold.copyWith(
                  color: BaseColors.primaryGreen,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DevicePrice extends StatelessWidget {
  const _DevicePrice();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        tileColor: BaseColors.backGroundWhite,
        title: Text(
          'Device Price'.toUpperCase(),
          style: BaseTextStyles.textSmallBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '₹ 1,38,963',
              style: BaseTextStyles.textExtraLargeBold.copyWith(
                color: BaseColors.primaryBlack,
              ),
            ),
            Flexible(
              child: Text(
                'Monthly deduction ₹18,900',
                style: BaseTextStyles.textSmallSemiBold.copyWith(
                  color: BaseColors.textGrey,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
