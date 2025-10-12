part of '../product_details_page.dart';

class EffectivePriceSheet {
  static void hide(BuildContext context) {
    context.pop();
  }

  static Future<void> show(BuildContext context) async {
    context.read<ProductBloc>().add(
      const ProductEvent.onResetFlow(flow: FlowType.effectivePrice),
    );
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (BuildContext context) {
        return const EffectivePriceSheetWidget();
      },
    );
  }
}

class EffectivePriceSheetWidget extends StatelessWidget {
  const EffectivePriceSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      decoration: const BoxDecoration(
        color: BaseColors.cardBackground,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Effective price'.toUpperCase(),
            style: BaseTextStyles.textSmallBold.copyWith(
              color: BaseColors.darkGrey,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'The effective price is the device’s cost after savings, based on your payroll structure',
            style: BaseTextStyles.textMediumSemiBold.copyWith(
              color: BaseColors.secondaryBlack,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const TaxSlab(),
          const SizedBox(height: 32),
          const OkUnderstoodCTA(),
        ],
      ),
    );
  }
}

class TaxSlab extends StatelessWidget {
  const TaxSlab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      buildWhen: (previous, current) =>
          previous.isEffectivePriceExpanded != current.isEffectivePriceExpanded,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: BaseColors.backGroundWhite,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: BaseColors.borderGrey),
          ),
          child: Theme(
            data: Theme.of(
              context,
            ).copyWith(splashColor: BaseColors.transparent),
            child: ExpansionTile(
              initiallyExpanded: state.isEffectivePriceExpanded,
              tilePadding: EdgeInsets.zero,
              childrenPadding: EdgeInsets.zero,
              shape: const Border(),
              title: const _ExpansionTitle(),
              trailing: ExpansionButton.caret(
                isExpanded: state.isEffectivePriceExpanded,
              ),
              children: [
                const CustomDottedLine(),
                const PriceTile(
                  title: 'Effective price of the device',
                  subTitle: 'Price calculation based on selected tax slab',
                  price: '₹ 92,483*',
                  isEffective: true,
                ),
                const CustomDottedLine(),
                const PriceTile(
                  title: 'Impact in monthly in-hand',
                  subTitle:
                      'You monthly in-hand salary will be reduced by this amount',
                  price: '₹7,706*',
                ),
                const Divider(
                  color: BaseColors.slateGrey,
                  thickness: 1,
                  height: 12,
                ),
                const _KnowMoreTile(),
                const SizedBox(height: 20),
              ],
              onExpansionChanged: (val) {
                context.read<ProductBloc>().add(
                  const ProductEvent.onExpandToggled(
                    type: ExpansionType.effectivePrice,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _ExpansionTitle extends StatelessWidget {
  const _ExpansionTitle();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tax Slab',
          style: BaseTextStyles.textMediumSemiBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
        Text(
          '30%',
          style: BaseTextStyles.textMediumBold.copyWith(
            color: BaseColors.primaryBlack,
          ),
        ),
      ],
    );
  }
}

class PriceTile extends StatelessWidget {
  const PriceTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    this.isEffective = false,
  });
  final String title;
  final String subTitle;
  final String price;
  final bool isEffective;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      title: Text(
        title,
        style: BaseTextStyles.textMediumBold.copyWith(
          color: isEffective ? BaseColors.brightGreen : BaseColors.primaryBlack,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: BaseTextStyles.textSmallRegular.copyWith(
          color: BaseColors.primaryBlack.withValues(alpha: 0.75),
        ),
      ),
      trailing: Text(
        price,
        style: BaseTextStyles.textMediumBold.copyWith(
          color: isEffective ? BaseColors.brightGreen : BaseColors.primaryBlack,
        ),
      ),
    );
  }
}

class _KnowMoreTile extends StatelessWidget {
  const _KnowMoreTile();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Know more',
              style: BaseTextStyles.textSmallSemiBold.copyWith(
                color: BaseColors.darkGreen,
              ),
            ),
          ),
          const Icon(
            PhosphorIconsFill.caretDown,
            color: BaseColors.primaryGreen,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class OkUnderstoodCTA extends StatelessWidget {
  const OkUnderstoodCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          EffectivePriceSheet.hide(context);
        },
        child: Text(
          'Okay! Understood',
          style: BaseTextStyles.textLargeBold.copyWith(color: BaseColors.white),
        ),
      ),
    );
  }
}
