part of '../product_details_page.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      buildWhen: (previous, current) =>
          previous.isImageBannerExpanded != current.isImageBannerExpanded,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: BaseColors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: BaseColors.black.withValues(alpha: 0.05),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              _BannerImage(isExpanded: state.isImageBannerExpanded),
              _ViewMoreCTA(isExpanded: state.isImageBannerExpanded),
            ],
          ),
        );
      },
    );
  }
}

class _ViewMoreCTA extends StatelessWidget {
  const _ViewMoreCTA({required this.isExpanded});
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      dense: true,
      splashColor: BaseColors.transparent,
      onTap: () {
        context.read<ProductBloc>().add(
          const ProductEvent.onExpandToggled(type: ExpansionType.imageBanner),
        );
      },

      trailing: ExpansionButton.caretCircle(isExpanded: isExpanded),
    );
  }
}

class _BannerImage extends StatelessWidget {
  const _BannerImage({required this.isExpanded});
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SizeTransition(
          sizeFactor: animation,
          axis: Axis.vertical,
          child: child,
        );
      },
      child: isExpanded
          ? Image.asset(Assets.iphone16Banner, fit: BoxFit.fill)
          : SizedBox(
              height: 240,
              width: double.infinity,
              child: Image.asset(
                Assets.iphone16Banner,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
    );
  }
}
