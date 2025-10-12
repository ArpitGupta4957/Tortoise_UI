part of '../product_details_page.dart';

class ProductImageCarousel extends StatelessWidget {
  const ProductImageCarousel({super.key, required this.imageUrls});
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return _ProductImageCarouselWithIndicator(imageUrls: imageUrls);
  }
}

class _ProductImageCarouselWithIndicator extends StatelessWidget {
  final List<String> imageUrls;
  final PageController _controller;

  _ProductImageCarouselWithIndicator({required this.imageUrls})
    : _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          color: BaseColors.white,
          child: PageView.builder(
            controller: _controller,
            itemCount: imageUrls.length,
            onPageChanged: (index) {
              context.read<ProductBloc>().add(
                ProductEvent.onProductImageSlide(index: index),
              );
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(48.0),
                child: Image.asset(imageUrls[index], fit: BoxFit.contain),
              );
            },
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: _ImageIndicator(count: imageUrls.length),
          ),
        ),
      ],
    );
  }
}

class _ImageIndicator extends StatelessWidget {
  final int count;
  const _ImageIndicator({required this.count});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      buildWhen: (previous, current) =>
          previous.currentProductImageIndex != current.currentProductImageIndex,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          decoration: BoxDecoration(
            color: BaseColors.darkGrey,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(count, (index) {
              final isSelected = index == state.currentProductImageIndex;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: isSelected
                      ? BoxDecoration(
                          color: BaseColors.white,
                          borderRadius: BorderRadius.circular(8),
                        )
                      : const BoxDecoration(
                          color: BaseColors.slateGrey,
                          shape: BoxShape.circle,
                        ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
