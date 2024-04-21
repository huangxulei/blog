import 'package:blog/base/get/controller/base_page_controller.dart';
import 'package:blog/model/project_model.dart';
import 'package:blog/utils/ext/refresher_extension.dart';
import 'package:blog/widget/pull_smart_refresher.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// @class : ProjectController
/// @date : 2021/08/23
/// @name : jhf
/// @description :项目 控制器层
class ProjectController extends BaseGetPageController {
  List<ProjectDetail> projectData = [];

  ///请求积分明细
  @override
  void requestData(RefreshController controller,
      {Refresh refresh = Refresh.first}) {
    request.requestTabModule(page, success: (data, over) {
      RefreshExtension.onSuccess(controller, refresh, over);

      ///下拉刷新需要清除列表
      if (refresh != Refresh.down) {
        projectData.clear();
      }
      projectData.addAll(data);
      showSuccess(projectData);
      update();
    }, fail: (code, msg) {
      showError();
      RefreshExtension.onError(controller, refresh);
    });
  }
}
