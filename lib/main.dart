import 'package:blog/app/app_theme.dart';
import 'package:blog/page/splash_page/splash_binding.dart';
import 'package:blog/page/splash_page/splash_page.dart';
import 'package:blog/res/strings.dart';
import 'package:blog/routes/routes.dart';
import 'package:blog/utils/config.dart';
import 'package:blog/utils/keyboard_util.dart';
import 'package:blog/utils/locale_util.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/injection_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.init();
  await Injection.init();
  final botToastBuilder = BotToastInit();
  runApp(GetMaterialApp(
    getPages: Routes.routePage,
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    builder: (context, child) {
      child = Scaffold(
        // Global GestureDetector that will dismiss the keyboard
        body: GestureDetector(
          onTap: () {
            KeyboardUtils.hideKeyboard(context);
          },
          child: child,
        ),
      ); //do something
      child = botToastBuilder(context, child); //添加toast方法
      return child;
    },
    navigatorObservers: [BotToastNavigatorObserver()],

    ///主题颜色
    theme: appThemeData,

    ///国际化支持-来源配置
    translations: Messages(),

    ///国际化支持-默认语言
    locale: LocaleOptions.getDefault(),

    ///国际化支持-备用语言
    fallbackLocale: const Locale('en', 'US'),
    defaultTransition: Transition.fade,
    initialBinding: SplashBinding(),
    home: const SplashPage(),
  ));
}
