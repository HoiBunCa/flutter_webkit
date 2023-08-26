import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:webkit/ui/widgets/common/draw_widget/draw_widget_model.dart';

import 'menu_title_model.dart';

class MenuTitle extends StackedView<MenuTitleModel> {
  final title;
  final active;
  final icon;
  final isCollapse;

  MenuTitle({
    super.key,
    required this.title,
    required this.active,
    required this.icon,
    required this.isCollapse,
  });

  @override
  Widget builder(
    BuildContext context,
    MenuTitleModel viewModel,
    Widget? child,
  ) {
    return Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: viewModel.getContainerColor(active),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Icon(
              icon,
              color: viewModel.getIconColor(active),
            ),
          ),
          if (!isCollapse)
            const SizedBox(
              width: 10,
            ),
          if (!isCollapse)
            Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      color: viewModel.getTextColor(active),
                      fontWeight: FontWeight.bold),
                )),
        ]));
  }

  @override
  MenuTitleModel viewModelBuilder(
    BuildContext context,
  ) =>
      MenuTitleModel();
}
