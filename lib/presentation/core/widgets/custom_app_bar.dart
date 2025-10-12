import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:tortoise_ui/presentation/theme/base_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.widgetTitle,
    this.textTitle,
    this.showBackButton = true,
    this.height,
  });
  final Widget? widgetTitle;
  final Widget? textTitle;
  final bool showBackButton;
  final double? height;

  factory CustomAppBar.widgetTitle({
    required Widget widgetTitle,
    bool showBackButton = true,
    double? height,
  }) => CustomAppBar(
    widgetTitle: widgetTitle,
    showBackButton: showBackButton,
    height: height,
  );

  factory CustomAppBar.textTitle({
    required Widget textTitle,
    bool showBackButton = true,
    double? height,
  }) => CustomAppBar(
    textTitle: textTitle,
    showBackButton: showBackButton,
    height: height,
  );

  @override
  Widget build(BuildContext context) {
    final double effectiveHeight = height ?? 56;
    if (textTitle != null) {
      return Container(
        height: effectiveHeight,
        color: const Color(0xFFF8F0EA),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (showBackButton)
              const Align(
                alignment: Alignment.centerLeft,
                child: AppBackButton(),
              ),
            Center(child: textTitle),
          ],
        ),
      );
    }
    if (widgetTitle != null) {
      return Container(
        height: effectiveHeight,
        color: const Color(0xFFF8F0EA),
        child: Row(
          children: [
            if (showBackButton) const AppBackButton(),
            Expanded(child: widgetTitle!),
          ],
        ),
      );
    }
    return showBackButton
        ? const Align(alignment: Alignment.centerLeft, child: AppBackButton())
        : const SizedBox.shrink();
  }
}

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
    this.onPressed,
  });
  final EdgeInsets padding;
  final VoidCallback? onPressed;

  void _onPressed(BuildContext context) {
    if (onPressed != null) {
      onPressed!();
    } else {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: IconButton.filled(
        style: IconButton.styleFrom(
          backgroundColor: BaseColors.grey2,
          foregroundColor: BaseColors.white,
        ),
        onPressed: () => _onPressed(context),
        icon: const Icon(PhosphorIconsRegular.caretLeft),
      ),
    );
  }
}
