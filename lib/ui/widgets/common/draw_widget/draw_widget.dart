import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../common/ui_helpers.dart';
import 'collapsed_icon/collapsed_icon.dart';
import 'draw_widget_model.dart';
import 'menu_title/menu_title.dart';

class DrawWidget extends StackedView<DrawWidgetModel> {
  const DrawWidget({super.key});

  @override
  Widget builder(
    BuildContext context,
    DrawWidgetModel viewModel,
    Widget? child,
  ) {
    return Container(
      width: viewModel.getWidth(context),
      height: MediaQuery.of(context).size.height * 0.89,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: MenuTitle(
                  title: 'Dashboard',
                  active: viewModel.checkActive('Dashboard'),
                  icon: Icons.dashboard_outlined,
                  isCollapse: viewModel.isCollapsed,
                ),

                onTap: () {
                  viewModel.tapMenu('Dashboard');
                },
              ),

              SizedBox(height: 15),
              InkWell(
                child: MenuTitle(
                  title: 'Ocr',
                  active: viewModel.checkActive('Ocr'),
                  icon: Icons.book_outlined,
                  isCollapse: viewModel.isCollapsed,

                ),
                onTap: () {
                  viewModel.tapMenu('Ocr');
                },
              ),

            ],
          ),
          Column(
            children: [
              Container(
                // margin: viewModel.getMargin(),
                child: InkWell(
                  child: Container(
                    width: double.infinity,
                    height: viewModel.size,
                    child: Icon(viewModel.getIcon(), color: Colors.black),
                  ),
                  onTap: () {
                    viewModel.toggleCollapsedButton();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  DrawWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      DrawWidgetModel();
}


