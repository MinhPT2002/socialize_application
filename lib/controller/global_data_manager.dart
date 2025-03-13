import 'package:socialize_application/base/cache_manager.dart';
// import 'package:socialize_application/global/app_router.dart';
import 'package:socialize_application/import.dart';

class GlobalDataManager with CacheManager {
  factory GlobalDataManager() {
    return _singleton;
  }
  GlobalDataManager._internal() {
    _initGlobalData();
  }

  bool passBoarding = false;

  bool isOpenAppSetting = false;
  String versionApp = '';
  String versionOS = '';

  Future<void> _initGlobalData() async {
    versionApp = await getAppVersion();
    // versionOS = await getVersionOS();
    passBoarding = getPassBoarding() ?? false;
  }

  Future<void> getNewUserInfo() async {
    // userInfo.value = await getUserInfo();
  }

  // void checkLogin() {
  //   if (getToken() != null) {
  //     Get.offAllNamed(AppRouter.routerDashboard);
  //   } else {
  //     Get.offAllNamed(AppRouter.routerStart);
  //   }
  // }

  Future<void> getUserInfoWithApi() async {
    // await _authUseCase.getUserInfo(
    //   onSuccess: (UserInfo data) async {
    //     removeUserInfo();
    //     UserInfo newUserInfo = data;
    //     newUserInfo =
    //         newUserInfo.copyWith(type_login: userInfo.value.type_login);
    //     await saveUserInfo(newUserInfo);
    //     userInfo.value = await getUserInfo();
    //   },
    //   onFailure: (err) {},
    // );
  }

  static final GlobalDataManager _singleton = GlobalDataManager._internal();
}
