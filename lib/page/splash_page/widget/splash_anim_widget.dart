import 'package:blog/res/r.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/res/style.dart';
import 'package:blog/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../base/get/get_common_view.dart';
import '../../../utils/save/sp_util.dart';
import '../splash_controller.dart';

class SplashAnimWidget extends GetCommonView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        onEnd: () {
          //去sp中寻找是否有保存信息
          Get.offNamed(SpUtil.getUserInfo() == null
              ? Routes.loginPage
              : Routes.homePage);
        },
        opacity: controller.opacityLevel,
        duration: const Duration(milliseconds: 2000),
        child: Container(
          margin: const EdgeInsets.only(top: 120),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                R.assetsImagesApplication,
                fit: BoxFit.fitWidth,
                width: 110,
                height: 110,
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Text(
                  StringStyles.appName.tr,
                  style: Styles.style_black_36,
                ),
              ),
            ],
          ),
        ));
  }
}
