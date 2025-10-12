import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:tortoise_ui/presentation/theme/base_colors.dart';

class CustomDottedLine extends StatelessWidget {
  const CustomDottedLine({super.key});
  final Color dashColor = BaseColors.slateGrey;

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      lineLength: double.infinity,
      lineThickness: 1.0,
      dashLength: 10.0,
      dashGapLength: 10.0,
      dashColor: dashColor,
      dashGapColor: BaseColors.transparent,
    );
  }
}
