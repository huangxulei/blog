/// @description :Web实例
class WebEntity {
  /// 标题
  String title = '';

  /// 链接
  String link = '';

  /// ID
  int id = 0;

  /// 取消收藏专用此字段
  int originId = 0;

  /// 是否收藏
  bool isCollect = false;

  WebEntity(
      {this.title = '',
      this.link = '',
      this.id = 0,
      this.isCollect = false,
      this.originId = 0});
}
