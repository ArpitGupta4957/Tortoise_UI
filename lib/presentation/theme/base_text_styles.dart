import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tortoise_ui/presentation/theme/base_colors.dart';

abstract class BaseTextStyles {
  static TextStyle textSmallRegular = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: BaseColors.black,
    ),
  );

  static TextStyle textSmallSemiBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  // TODO: This should be Haffer Font, but not available in Google Fonts
  static TextStyle textSmallBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle textSemiMediumSemiBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle textSemiMediumBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle textMediumSemiBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle textMediumBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle textLargeSemiBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle textLargeBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  //This should be Haffer Font, but not available in Google Fonts
  static TextStyle textExtraLargeBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle textHugeBold = GoogleFonts.inter(
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );
}
