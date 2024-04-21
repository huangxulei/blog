import 'package:blog/base/get/get_save_state_view.dart';
import 'package:blog/page/ask_page/widget/ask_item_widget.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:flutter/material.dart';

import 'ask_controller.dart';

/// @class : ProjectPage
/// @date : 2021/08/23
/// @name : jhf
/// @description :项目 View层
class AskPage extends GetSaveView<AskController> {
  const AskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: RefreshWidget<AskController>(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: controller.projectData.length,
            itemBuilder: (BuildContext context, int index) {
              return AskListItem(
                controller.projectData[index],
                onResult: (value) {
                  controller.projectData[index].collect = value;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
