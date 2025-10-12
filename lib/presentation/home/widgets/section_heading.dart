part of '../home_page.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.heading});
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        heading.toUpperCase(),
        style: BaseTextStyles.textLargeBold.copyWith(color: BaseColors.black),
      ),
    );
  }
}
