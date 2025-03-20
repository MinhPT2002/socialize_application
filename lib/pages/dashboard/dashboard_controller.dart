import 'package:socialize_application/controller/remote_manager.dart';
import 'package:socialize_application/import.dart';

class DashboardController extends BaseController {
  RxInt currentTabIndex = 0.obs;
  RxInt totalNotice = 0.obs;
  RxInt totalMatchingMessage = 0.obs;
  RxInt totalUnread = 0.obs;

  @override
  Future<void> onInit() async {
    Future(() => RemoteManager().upgradeApp());
    super.onInit();
  }

  Future<void> changePageIndex({required int index}) async {
    if (index != currentTabIndex.value) {
      currentTabIndex.value = index;
    }
  }
}
