// ignore_for_file: depend_on_referenced_packages

// import 'dart:convert';
import 'package:package_info_plus/package_info_plus.dart';
// import 'package:socialize_application/base/loading_wrapper.dart';
// // import 'package:socialize_application/data/model/common/update_version_model.dart';
// import 'package:socialize_application/import.dart';
// // import 'package:socialize_application/service/firebase/remote_config_service.dart';
// import 'package:socialize_application/utils/utils.dart';

class RemoteManager {
  factory RemoteManager() {
    return _singleton;
  }
  RemoteManager._internal() {
    _initRemote();
    _getVersionApp();
  }
  String? currentVersion;
  // UpdateVersionModel? updateVersion;
  int? totalWish;
  bool initialMessageActive = false;

  DateTime? activeOTP;
  bool isOpenPopupUpdate = false;
  void setActiveOTP(value) {
    activeOTP = value;
  }

  void _initRemote() {
    // final String data =
    //     RemoteConfigService().remoteConfig.getString('app_version').toString();
    // if (data.isNotEmpty) {
    //   // updateVersion = UpdateVersionModel.fromMap(jsonDecode(data));
    // }
  }

  void upgradeApp() {
    // Future(() async {
    //   final String? tempVersion = updateVersion?.appVersion;
    //   if (tempVersion != null &&
    //       tempVersion.isNotEmpty &&
    //       isOpenPopupUpdate == false) {
    //     await _getVersionApp();

    //     if (_convertVersion(tempVersion) > _convertVersion(currentVersion)) {
    //       final bool temp = updateVersion?.requiredUpdate ?? true;
    //       isOpenPopupUpdate = true;
    //       Get.find<LoadingController>().showCustomGeneralDialog(
    //         title: LocaleKeys.pleaseUpdateApp.tr,
    //         message: LocaleKeys.needUpdateApp.tr,
    //         acceptText: LocaleKeys.update.tr,
    //         showOnlyConfirm: temp,
    //         barrierDismissible: !temp,
    //         onCancel: () => isOpenPopupUpdate = false,
    //         onConfirm: () {
    //           isOpenPopupUpdate = false;
    //           openBrowser(updateVersion?.linkUrl);
    //         },
    //       );
    //     }
    //   }
    // });
  }

  int _convertVersion(String? value) {
    if (value != null && value.isNotEmpty) {
      return int.parse(value.replaceAll('.', ''));
    }
    return 0;
  }

  Future<void> _getVersionApp() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();

    currentVersion = packageInfo.version;
  }

  static final RemoteManager _singleton = RemoteManager._internal();
}
