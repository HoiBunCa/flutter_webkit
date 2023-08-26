import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'search_field_model.dart';

class SearchField extends StackedView<SearchFieldModel> {
  const SearchField({super.key});

  @override
  Widget builder(
    BuildContext context,
    SearchFieldModel viewModel,
    Widget? child,
  ) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search for Statistics",
          helperStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),fontSize: 15,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)
          ),
          prefixIcon: Icon(Icons.search,color: Colors.black.withOpacity(0.5),)
      ),
    );
  }

  @override
  SearchFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchFieldModel();
}
