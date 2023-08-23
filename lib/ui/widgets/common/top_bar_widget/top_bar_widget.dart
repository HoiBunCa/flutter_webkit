import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'top_bar_widget_model.dart';

class TopBarWidget extends StackedView<TopBarWidgetModel> {
  const TopBarWidget({super.key});

  @override
  Widget builder(
    BuildContext context,
    TopBarWidgetModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: viewModel.getHeight(context),
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Text("LOGO"),
              const SizedBox(
                width: 10,
              ),
              const Text("Search")
            ],
          ),
          const Row(
            children: [
              Text("DARK MODE"),
              SizedBox(
                width: 10,
              ),
              Text("LANGUAGE"),
              SizedBox(
                width: 10,
              ),
              Text("NOTI"),
              SizedBox(
                width: 10,
              ),
              Text("USER"),
            ],
          )
        ],
      ),
    );
  }

  @override
  TopBarWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      TopBarWidgetModel();
}
