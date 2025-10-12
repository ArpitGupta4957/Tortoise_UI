part of '../product_details_page.dart';

class PickStorage extends StatelessWidget {
  const PickStorage({super.key, required this.storageOptions});
  final List<String> storageOptions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage'.toUpperCase(),
            style: BaseTextStyles.textSmallBold.copyWith(
              color: const Color.fromARGB(255, 22, 21, 21),
            ),
          ),
          const SizedBox(height: 8),
          BlocBuilder<ProductBloc, ProductState>(
            buildWhen: (previous, current) =>
                previous.selectedStorageIndex != current.selectedStorageIndex,
            builder: (context, state) {
              return SizedBox(
                height: 44,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: storageOptions.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    final isSelected = index == state.selectedStorageIndex;
                    return _StorageTile(
                      index: index,
                      isSelected: isSelected,
                      storageOptions: storageOptions,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _StorageTile extends StatelessWidget {
  const _StorageTile({
    required this.index,
    required this.isSelected,
    required this.storageOptions,
  });

  final int index;
  final bool isSelected;
  final List<String> storageOptions;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProductBloc>().add(
          ProductEvent.onStorageSelected(index: index),
        );
      },
      child: Container(
        width: 90,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: BaseColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? BaseColors.brightGreen : BaseColors.borderGrey,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            if (!isSelected)
              BoxShadow(
                color: BaseColors.black.withValues(alpha: 0.05),
                blurRadius: 2,
                offset: const Offset(0, 2),
              ),
          ],
        ),
        child: Center(
          child: Text(
            storageOptions[index],
            style: BaseTextStyles.textMediumBold.copyWith(
              color: BaseColors.black,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

class RadioIcon extends StatelessWidget {
  const RadioIcon({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? BaseColors.brightGreen : BaseColors.slateGrey,
          width: isSelected ? 4 : 1,
        ),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: BaseColors.white,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : null,
    );
  }
}
