part of '../home_page.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final productsList = context.read<ProductBloc>().state.productsList;
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: productsList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final product = productsList[index];
        return _ProductTile(product: product);
      },
    );
  }
}

class _ProductTile extends StatelessWidget {
  const _ProductTile({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    // Dummy data for ratings, customers, price, etc.
    final double rating = 4.6;
    final int customers = 10;
    final int price = 2699;
    final int oldPrice = 14990;
    final int discount = 82;
    final String feature = '80 Hours Playback';
    final String badge = 'EXTRA ₹100 OFF';
    final bool showBadge = true;

    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.productDetails, extra: {'product': product});
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: const Color(0xFFF8F7F4),
        elevation: 4,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  product.images.first,
                  width: 100,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 10),
              // Details and button in a column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Details
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (showBadge)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: BaseColors.primaryGreen,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  badge,
                                  style: BaseTextStyles.textSmallBold.copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            const SizedBox(width: 2),
                            Text(
                              rating.toString(),
                              style: BaseTextStyles.textSmallBold,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '|',
                              style: BaseTextStyles.textSmallRegular.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              customers.toString(),
                              style: BaseTextStyles.textSmallRegular.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          product.name,
                          style: BaseTextStyles.textMediumBold,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              '₹$price',
                              style: BaseTextStyles.textLargeBold.copyWith(
                                color: BaseColors.primaryBlack,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '₹$oldPrice',
                              style: BaseTextStyles.textSmallRegular.copyWith(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '$discount% off',
                              style: BaseTextStyles.textSmallBold.copyWith(
                                color: BaseColors.primaryGreen,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: BaseColors.lightYellow,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            feature,
                            style: BaseTextStyles.textSmallBold.copyWith(
                              color: BaseColors.darkyellow,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: BaseColors.primaryGreen,
                          foregroundColor: BaseColors.primaryBlack,
                          elevation: 2,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          side: const BorderSide(
                            color: BaseColors.primaryBlack,
                            width: 1,
                          ),
                        ),
                        child: const Text(
                          'Add To Cart',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
