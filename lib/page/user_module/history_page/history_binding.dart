import 'package:blog/page/user_module/history_page/history_controller.dart';

import 'package:get/get.dart';

/// @class : HistoryBinding
/// @date : 2021/9/9
/// @name : jhf
/// @description :历史记录 binding层
class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryController());
  }
}
