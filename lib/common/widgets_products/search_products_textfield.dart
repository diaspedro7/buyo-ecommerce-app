import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../features/shop/statecontrollers/search_statecontroller.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.onFieldSubmitted,
  });

  final void Function(String) onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final searchStateController = SearchStateController.instance;

    return SizedBox(
      height: 40,
      child: TextFormField(
        controller: searchStateController.searchController,
        onFieldSubmitted: onFieldSubmitted,
        cursorColor: TColors.primary,
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: TColors.textSecondary,
            ),
            hintText: "Search",
            contentPadding: const EdgeInsets.symmetric(
                vertical: 0), // Needs this to centralize the hintText

            hintStyle: Theme.of(context)
                .inputDecorationTheme
                .hintStyle!
                .apply(color: TColors.textSecondary),
            fillColor: TColors.white,
            filled: true,
            focusedBorder: Theme.of(context)
                .inputDecorationTheme
                .focusedBorder!
                .copyWith(
                    borderSide:
                        const BorderSide(color: TColors.grey, width: 1))),
      ),
    );
  }
}
