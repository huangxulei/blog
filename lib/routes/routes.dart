import 'package:blog/page/home_page/home_binding.dart';
import 'package:blog/page/home_page/home_page.dart';
import 'package:blog/page/login_page/login_binding.dart';
import 'package:blog/page/login_page/login_page.dart';
import 'package:blog/page/register_page/register_binding.dart';
import 'package:blog/page/register_page/register_page.dart';
import 'package:blog/page/search_page/search_binding.dart';
import 'package:blog/page/search_page/search_page.dart';
import 'package:blog/page/splash_page/splash_binding.dart';
import 'package:blog/page/splash_page/splash_page.dart';
import 'package:blog/page/user_module/about_page/about_binding.dart';
import 'package:blog/page/user_module/about_page/about_page.dart';
import 'package:blog/page/user_module/history_page/history_binding.dart';
import 'package:blog/page/user_module/history_page/history_page.dart';
import 'package:blog/page/user_module/setting_page/setting_binding.dart';
import 'package:blog/page/user_module/setting_page/setting_page.dart';
import 'package:blog/page/user_module/user_info_page/userinfo_binding.dart';
import 'package:blog/page/user_module/user_info_page/userinfo_page.dart';
import 'package:blog/page/webview_page/webview_binding.dart';
import 'package:blog/page/webview_page/webview_page.dart';
import 'package:get/get.dart';

abstract class Routes {
  ///入口模块
  static const String splashPage = '/splash';

  ///登录模块
  static const String loginPage = '/login';

  ///注册
  static const String registerPage = '/register';

  ///主页
  static const String homePage = '/home';

  ///webView
  static const String webViewPage = '/webView';

  ///入口模块
  static const String feedbackPage = '/feedback';

  ///用户信息模块
  static const String userInfoPage = '/userInfo';

  ///积分排行榜
  static const String rankingPage = '/ranking';

  ///关于我们
  static const String aboutPage = '/about';

  ///积分明细
  static const String pointsPage = '/points';

  ///设置
  static const String settingPage = '/setting';

  ///语言
  static const String settingLanguagePage = '/language';

  ///我的收藏
  static const String collectPage = '/collect';

  ///搜索页面
  static const String searchPage = '/search';

  ///浏览记录
  static const String historyPage = '/history';

  ///分享页面
  static const String sharePage = '/share';

  ///页面合集
  static final routePage = [
    GetPage(
        name: splashPage,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: registerPage,
        page: () => const RegisterPage(),
        binding: RegisterBinding()),
    GetPage(
        name: loginPage,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: userInfoPage,
        page: () => const UserInfoPage(),
        binding: UserInfoBinding()),
    GetPage(
        name: homePage, page: () => const HomePage(), binding: HomeBinding()),
    GetPage(
        name: aboutPage,
        page: () => const AboutPage(),
        binding: AboutBinding()),
    GetPage(
        name: settingPage,
        page: () => const SettingPage(),
        binding: SettingBinding()),
    GetPage(
        name: historyPage,
        page: () => const HistoryPage(),
        binding: HistoryBinding()),
    GetPage(
        name: webViewPage,
        page: () => const WebViewPage(),
        binding: WebViewBinding()),
    GetPage(
        name: searchPage,
        page: () => const SearchPage(),
        binding: SearchBinding()),
  ];
}
