import 'package:blog/http/http_request.dart';
import 'package:blog/http/request.dart';
import 'package:blog/http/request_api.dart';

import '../model/request_register.dart';
import '../utils/save/sp_util.dart';

typedef SuccessOver<T> = Function(T data, bool over);

/// @class : RequestRepository
/// @date : 2021/08/25
/// @name : jhf
/// @description : 请求仓库
class RequestRepository {
  ///登录请求
  /// [account]账号
  /// [password]密码
  /// [password]重复密码
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  register(
    String account,
    String password,
    String rePassword, {
    Success<UserEntity>? success,
    Fail? fail,
  }) {
    Request.post<dynamic>(RequestApi.apiRegister, {
      "username": account,
      "password": password,
      "repassword": rePassword
    }, success: (data) {
      var registerInfo = UserEntity.fromJson(data);
      registerInfo.password = password;
      SpUtil.putUserInfo(registerInfo);
      if (success != null) {
        success(registerInfo);
      }
    }, fail: (code, msg) {
      if (fail != null) {
        fail(code, msg);
      }
    });
  }

  ///登录请求
  /// [account]账号
  /// [password]密码
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  login(
    String account,
    String password, {
    Success<UserEntity>? success,
    Fail? fail,
  }) {
    Request.post<dynamic>(
        RequestApi.apiLogin, {"username": account, "password": password},
        success: (data) {
      var loginInfo = UserEntity.fromJson(data);
      loginInfo.password = password;
      SpUtil.putUserInfo(loginInfo);
      if (success != null) {
        success(loginInfo);
      }
    }, fail: (code, msg) {
      if (fail != null) {
        fail(code, msg);
      }
    });
  }

  ///收藏|取消收藏 文章接口
  ///[id]文章ID
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  getUserInfo({
    Success<UserEntity>? success,
    Fail? fail,
  }) {
    Request.get<dynamic>(RequestApi.apiUserInfo, {}, dialog: false,
        success: (data) {
      if (success != null) {
        var userInfo = data["userInfo"];
        userInfo = UserEntity.fromJson(userInfo);
        success(userInfo);
      }
    }, fail: (code, msg) {
      if (fail != null) {
        fail(code, msg);
      }
    });
  }

  ///收藏|取消收藏 文章接口
  ///[id]文章ID
  /// [success] 请求成功回调
  /// [fail] 请求失败回调
  collectArticle(
    int id, {
    bool isCollect = false,
    Success<bool>? success,
    Fail? fail,
  }) {
    var api = isCollect ? RequestApi.apiUnCollect : RequestApi.apiCollect;
    Request.post<dynamic>(api.replaceFirst(RegExp('id'), '$id'), {},
        dialog: false, success: (data) {
      if (success != null) {
        success(true);
      }
    }, fail: (code, msg) {
      if (fail != null) {
        fail(code, msg);
      }
    });
  }
}
