part of '../product_details_page.dart';

class PickColor extends StatelessWidget {
  const PickColor({super.key, required this.colorOptions});
  final List<Color> colorOptions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color'.toUpperCase(),
            style: BaseTextStyles.textSmallBold.copyWith(
              color: const Color.fromARGB(255, 12, 12, 12),
            ),
          ),
          const SizedBox(height: 12),
          BlocBuilder<ProductBloc, ProductState>(
            buildWhen: (previous, current) =>
                previous.selectedColorIndex != current.selectedColorIndex,
            builder: (context, state) {
              return Row(
                children: List.generate(colorOptions.length, (index) {
                  final color = colorOptions[index];
                  final isSelected = index == state.selectedColorIndex;
                  return _ColorTile(
                    index: index,
                    isSelected: isSelected,
                    color: color,
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile({
    required this.index,
    required this.isSelected,
    required this.color,
  });
  final int index;
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProductBloc>().add(
          ProductEvent.onColorSelected(index: index),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isSelected
              ? Border.all(color: BaseColors.brightGreen, width: 4)
              : null,
        ),
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(color: BaseColors.white, width: 1),
          ),
          child: ClipOval(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.20),
                    Colors.black.withValues(alpha: 0.05),
                    Colors.black.withValues(alpha: 0.00),
                  ],
                  stops: const [0.0, 0.4, 1.0],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
