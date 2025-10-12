part of '../home_page.dart';

class BrandsList extends StatelessWidget {
  const BrandsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      buildWhen: (previous, current) =>
          previous.selectedBrand != current.selectedBrand,
      builder: (context, state) {
        return Container(
          color: const Color(0xFFF8F0EA),
          child: SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(
                left: 17,
                top: 14,
              ), // add left space for shadow
              itemCount: state.brandsList.length,
              itemBuilder: (context, index) {
                final brand = state.brandsList[index];
                return _BrandTile(
                  brand: brand,
                  isSelectedAndCurrentBranchSame: state.selectedBrand == brand,
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _BrandTile extends StatelessWidget {
  const _BrandTile({
    required this.brand,
    required this.isSelectedAndCurrentBranchSame,
  });

  final Brand brand;
  final bool isSelectedAndCurrentBranchSame;

  @override
  Widget build(BuildContext context) {
    return _BrandTileHover(
      brand: brand,
      isSelectedAndCurrentBranchSame: isSelectedAndCurrentBranchSame,
    );
  }
}

class _BrandTileHover extends StatefulWidget {
  final Brand brand;
  final bool isSelectedAndCurrentBranchSame;
  const _BrandTileHover({
    required this.brand,
    required this.isSelectedAndCurrentBranchSame,
  });

  @override
  State<_BrandTileHover> createState() => _BrandTileHoverState();
}

class _BrandTileHoverState extends State<_BrandTileHover> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final double baseSize = 86;
    final double scale = _hovering ? 1.15 : 1.0;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hovering = true),
            onExit: (_) => setState(() => _hovering = false),
            child: InkWell(
              borderRadius: BorderRadius.circular(80),
              onTap: () {
                if (widget.isSelectedAndCurrentBranchSame) return;
                context.read<ProductBloc>().add(
                  ProductEvent.onBrandSelectionUpdate(value: widget.brand),
                );
              },
              splashColor: BaseColors.slateGrey.withOpacity(0.10),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                curve: Curves.easeOut,
                width: baseSize * scale,
                height: baseSize * scale,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFF8F0EA),
                  border: Border.all(
                    color: const Color.fromARGB(255, 37, 14, 14),
                    width: 2.5,
                  ),
                  boxShadow: [
                    if (_hovering || widget.isSelectedAndCurrentBranchSame)
                      BoxShadow(
                        color: const Color.fromARGB(
                          255,
                          50,
                          49,
                          49,
                        ).withOpacity(0.35),
                        blurRadius: 18,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(widget.brand.iconPath, height: 40),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.brand.name,
            style: BaseTextStyles.textSmallSemiBold.copyWith(
              color: BaseColors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
