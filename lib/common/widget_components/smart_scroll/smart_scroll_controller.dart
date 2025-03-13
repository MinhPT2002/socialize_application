import 'package:smart_scroll/smart_scroll.dart';
import 'package:socialize_application/import.dart';

mixin SmartLoadListController<T> {
  RefreshController refreshController =
      RefreshController(initialRefresh: false);
  ScrollController smartScrollController = ScrollController();

  RxBool isLoadingPage = false.obs;
  RxBool isLoading = false.obs;

  Rx<String?> emptyMessage = RxNullable<String?>().setNull();

  RxList<T> dataList = <T>[].obs;

  void jumToPosition({double? position}) {
    if (smartScrollController.hasClients) {
      smartScrollController.jumpTo(position ?? 0);
    }
  }

  void onLoadMore();

  void onRefresh();
}
