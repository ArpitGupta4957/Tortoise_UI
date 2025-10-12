import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:tortoise_ui/presentation/theme/base_colors.dart';

class ExpansionButton extends StatelessWidget {
  const ExpansionButton({
    super.key,
    required this.isExpanded,
    required this.iconColor,
    required this.expandedIcon,
    required this.collapsedIcon,
  });
  final bool isExpanded;
  final Color iconColor;
  final IconData expandedIcon;
  final IconData collapsedIcon;

  factory ExpansionButton.caret({
    required bool isExpanded,
    iconColor = BaseColors.secondaryBlack,
  }) => ExpansionButton(
    isExpanded: isExpanded,
    expandedIcon: PhosphorIconsFill.caretUp,
    collapsedIcon: PhosphorIconsFill.caretDown,
    iconColor: iconColor,
  );

  factory ExpansionButton.caretCircle({
    required bool isExpanded,
    iconColor = BaseColors.primaryGreen,
  }) => ExpansionButton(
    isExpanded: isExpanded,
    expandedIcon: PhosphorIconsFill.caretCircleUp,
    collapsedIcon: PhosphorIconsFill.caretCircleDown,
    iconColor: iconColor,
  );

  @override
  Widget build(BuildContext context) {
    return Icon(
      isExpanded ? expandedIcon : collapsedIcon,
      color: iconColor,
      size: 18,
    );
  }
}
