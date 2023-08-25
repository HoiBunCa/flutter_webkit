import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'content_widget_model.dart';

class ContentWidget extends StackedView<ContentWidgetModel> {
  const ContentWidget({super.key});

  @override
  Widget builder(
    BuildContext context,
    ContentWidgetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Ink(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 5),
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(50.0)), //<-- SEE HERE
        child: InkWell(
          borderRadius: BorderRadius.circular(100.0),
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.flight,
              size: 20.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  ContentWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      ContentWidgetModel();
}
