part of '../product_details_page.dart';

class SpecificationsView extends StatelessWidget {
  const SpecificationsView({super.key, required this.specifications});
  final List<Specifications> specifications;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      buildWhen: (previous, current) =>
          previous.isSpecificationExpanded != current.isSpecificationExpanded,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Specifications'.toUpperCase(),
                style: BaseTextStyles.textSmallBold.copyWith(
                  color: const Color.fromARGB(255, 20, 19, 19),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: BaseColors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: BaseColors.borderGrey, width: 1),
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
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                            return SizeTransition(
                              sizeFactor: animation,
                              axis: Axis.vertical,
                              child: child,
                            );
                          },
                      child: state.isSpecificationExpanded
                          ? ShowSpecifications(specifications: specifications)
                          : ShowSpecifications(
                              specifications: specifications,
                              limit: 2,
                            ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(height: 1, color: BaseColors.grey2),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 16,
                        right: 14,
                      ),
                      dense: true,
                      splashColor: BaseColors.transparent,
                      onTap: () {
                        context.read<ProductBloc>().add(
                          const ProductEvent.onExpandToggled(
                            type: ExpansionType.specifications,
                          ),
                        );
                      },
                      title: Text(
                        state.isSpecificationExpanded
                            ? 'Less Details'
                            : 'More Details',
                        style: BaseTextStyles.textSemiMediumBold.copyWith(
                          color: BaseColors.primaryGreen,
                        ),
                      ),
                      trailing: ExpansionButton.caretCircle(
                        isExpanded: state.isSpecificationExpanded,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ShowSpecifications extends StatelessWidget {
  const ShowSpecifications({
    super.key,
    required this.specifications,
    this.limit = -1,
  });
  final List<Specifications> specifications;
  final int limit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListView.builder(
        itemCount: specifications.length > limit && limit != -1
            ? limit
            : specifications.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final spec = specifications[index];
          return SpecsListTile(
            title: spec.type,
            subTitle: spec.value,
            leadingIcon: spec.iconData,
          );
        },
      ),
    );
  }
}

class SpecsListTile extends StatelessWidget {
  const SpecsListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
  });
  final String title;
  final String subTitle;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 8),
      dense: true,
      leading: Icon(leadingIcon, size: 24, color: BaseColors.primaryGreen),
      title: Text(
        title,
        style: BaseTextStyles.textMediumBold.copyWith(
          color: BaseColors.textGrey,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: BaseTextStyles.textSmallSemiBold.copyWith(
          color: BaseColors.textGrey,
        ),
      ),
    );
  }
}
