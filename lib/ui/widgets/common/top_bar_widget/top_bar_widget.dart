import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../search_field/search_field.dart';
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
          Container(
            width: 400,
            child: Row(
              children: [
                Image.asset("../assets/images/tima_logo.png"),
                const SizedBox(
                  width: 10,
                ),
                Text("SEARCH")
              ],
            ),
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
