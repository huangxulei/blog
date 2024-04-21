import 'package:bot_toast/bot_toast.dart';

/// @description :显示toast
class ToastUtils {
  static show(String name) {
    BotToast.showText(text: name);
  }
}
