import 'package:blog/base/get/get_common_view.dart';
import 'package:blog/page/my_page/widget/head_circle_widget.dart';
import 'package:blog/page/user_module/user_info_page/userinfo_controller.dart';
import 'package:blog/page/user_module/user_info_page/widget/user_info_widget.dart';
import 'package:blog/res/shadow_style.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/widget/_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// @class : WebViewPage
/// @description :用户信息 View层
class UserInfoPage extends GetCommonView<UserInfoController> {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            ToolBar(
                title: StringStyles.homeUserInfo.tr,
                backOnTap: () => Get.back()),

            ///头像
            Container(
              margin: const EdgeInsets.only(top: 24),
              decoration: ShadowStyle.black12Circle40(),
              child: HeadCircleWidget(
                width: 72,
                height: 72,
              ),
            ),
            Box.vBox20,

            UserInfoWidget(
              keys: StringStyles.userNickname.tr,
              value: controller.userInfo.nickname,
            ),

            DividerStyle.divider1HalfPadding20,
          ],
        ),
      ),
    );
  }
}
