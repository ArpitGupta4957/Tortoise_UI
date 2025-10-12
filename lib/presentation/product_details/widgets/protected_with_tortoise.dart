part of '../product_details_page.dart';

class ProtectedWithTortoise extends StatelessWidget {
  const ProtectedWithTortoise({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      alignment: Alignment.center,
      color: BaseColors.darkGreen,
      child: Text.rich(
        TextSpan(
          children: [
            WidgetSpan(
              child: SvgPicture.asset(Assets.protectedShield),
              alignment: PlaceholderAlignment.middle,
            ),
            const WidgetSpan(child: SizedBox(width: 12)),
            TextSpan(
              text: 'Protected with Tortoise Corporate Care',
              style: BaseTextStyles.textMediumSemiBold.copyWith(
                color: BaseColors.lightGreen,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
