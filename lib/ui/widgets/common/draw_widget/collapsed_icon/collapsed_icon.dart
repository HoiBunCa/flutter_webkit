import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'collapsed_icon_model.dart';

class CollapsedIcon extends StackedView<CollapsedIconModel> {
  const CollapsedIcon(BuildContext context, isCollapsed, {super.key});

  @override
  Widget builder(
    BuildContext context,
    CollapsedIconModel viewModel,
    Widget? child,
  ) {
    return Container(
      alignment: viewModel.getAlignment(),
      margin: viewModel.getMargin(),
      child: Material(
        child: InkWell(
          child: Container(
            width: viewModel.getWidth(),
            height: viewModel.size,
            child: Icon(viewModel.getIcon(), color: Colors.black),
          ),
          onTap: () {
            viewModel.toggleCollapsedButton();
          },
        ),
      ),
    );
  }

  @override
  CollapsedIconModel viewModelBuilder(
    BuildContext context,
  ) =>
      CollapsedIconModel();
}
