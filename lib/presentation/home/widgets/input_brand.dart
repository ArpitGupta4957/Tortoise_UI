part of '../home_page.dart';

class InputBrand extends StatefulWidget {
  const InputBrand({super.key});

  @override
  State<InputBrand> createState() => _InputBrandState();
}

class _InputBrandState extends State<InputBrand> {
  late final TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 18, 16, 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F0EA), // match home page background
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        style: BaseTextStyles.textLargeSemiBold.copyWith(
          color: const Color.fromARGB(255, 99, 98, 98),
        ),
        cursorColor: const Color.fromARGB(255, 118, 121, 123),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            PhosphorIconsRegular.magnifyingGlass,
            color: BaseColors.shadowGrey,
            size: 15,
          ),
          hintText: 'Search brands...',
          hintStyle: BaseTextStyles.textLargeSemiBold.copyWith(
            color: const Color.fromARGB(255, 140, 141, 143),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onSubmitted: (value) {
          if (value.trim().isNotEmpty) {
            context.read<ProductBloc>().add(
              ProductEvent.onBrandSearchUpdate(value: value.trim()),
            );
            _controller.clear();
          }
        },
        textInputAction: TextInputAction.search,
      ),
    );
  }
}

// ignore: unused_element
class _BrandChips extends StatelessWidget {
  const _BrandChips({required this.brands});
  final List<String> brands;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: brands
          .map(
            (brandStr) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Chip(
                label: Text(
                  brandStr,
                  style: BaseTextStyles.textLargeSemiBold.copyWith(
                    color: BaseColors.black,
                  ),
                ),
                padding: EdgeInsets.zero,
                backgroundColor: const Color.fromARGB(255, 175, 190, 141),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide.none,
                deleteIcon: const Icon(
                  PhosphorIconsFill.xCircle,
                  size: 18,
                  color: Colors.black,
                ),
                onDeleted: () {
                  context.read<ProductBloc>().add(
                    ProductEvent.onBrandChipRemove(value: brandStr),
                  );
                },
              ),
            ),
          )
          .toList(),
    );
  }
}

// ignore: unused_element
class _BrandInputField extends StatelessWidget {
  const _BrandInputField({required this.controller, required this.focusNode});
  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 60, maxWidth: 200),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        cursorColor: BaseColors.shadowGrey,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          hintStyle: BaseTextStyles.textLargeSemiBold.copyWith(
            color: BaseColors.shadowGrey,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
        ),
        onFieldSubmitted: (value) {
          if (value.trim().isNotEmpty) {
            context.read<ProductBloc>().add(
              ProductEvent.onBrandSearchUpdate(value: value.trim()),
            );
            controller.clear();
          }
        },
        onChanged: (value) {
          if (value.endsWith('\n')) {
            context.read<ProductBloc>().add(
              ProductEvent.onBrandSearchUpdate(value: value.trim()),
            );
            controller.clear();
          }
        },
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
