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
      child: Text("CONTENT"),
    );
  }

  @override
  ContentWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      ContentWidgetModel();
}
