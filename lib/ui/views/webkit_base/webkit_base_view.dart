import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:webkit/app/app.dart';
import 'package:webkit/ui/widgets/common/content_widget/content_widget.dart';
import 'package:webkit/ui/widgets/common/top_bar_widget/top_bar_widget.dart';

import '../../common/app_constants.dart';
import '../../widgets/common/draw_widget/draw_widget.dart';
import 'webkit_base_viewmodel.dart';

class WebkitBaseView extends StackedView<WebkitBaseViewModel> {
  const WebkitBaseView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WebkitBaseViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Color(0xffE9E8E7),
        body: Column(
          children: [
            TopBarWidget(),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: DrawWidget(),
                ),
                Container(
                  child: ContentWidget(),
                )
              ],
            )
          ],
        ));
  }

  @override
  WebkitBaseViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WebkitBaseViewModel();
}
