import 'package:socialize_application/import.dart';
import 'package:socialize_application/pages/dashboard/dashboard_controller.dart';
import 'package:socialize_application/pages/home/home_page.dart';

class DashboardPage extends BaseScreen<DashboardController> {
  DashboardPage({super.key});

  @override
  Widget builder() {
    controller.hideLoading();
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.currentTabIndex.value,
            children: [
              HomePage(),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
      backgroundColor: color.white,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          onTap: (value) => controller.changePageIndex(index: value),
          currentIndex: controller.currentTabIndex.value,
          backgroundColor: color.white,
          selectedItemColor: color.mainColor,
          selectedLabelStyle: const TextStyle(fontSize: 0),
          unselectedLabelStyle: const TextStyle(fontSize: 0),
          unselectedItemColor: color.color999999,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            _buildBottomNvBarItem(
                title: LocaleKeys.home.tr,
                index: 0,
                icon: AssetIcons.iconDashboard1),
            _buildBottomNvBarItem(
                title: LocaleKeys.myVaults.tr,
                index: 1,
                icon: AssetIcons.iconDashboard2),
            _buildBottomNvBarItem(
                title: LocaleKeys.discover.tr,
                index: 2,
                icon: AssetIcons.iconDashboard3),
            _buildBottomNvBarItem(
                title: LocaleKeys.notifications.tr,
                index: 3,
                icon: AssetIcons.iconDashboard4),
            _buildBottomNvBarItem(
                title: LocaleKeys.calendar.tr,
                index: 4,
                icon: AssetIcons.iconDashboard5),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNvBarItem({
    required String title,
    required int index,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          SvgPicture.asset(
            icon,
            width: 24.w,
            height: 24.h,
            color: controller.currentTabIndex.value == index
                ? color.color0080FF
                : color.color999999,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: textStyle.regular(
              size: 12,
              color: controller.currentTabIndex.value == index
                  ? color.color0080FF
                  : color.color999999,
            ),
          ),
        ],
      ),
      label: '',
    );
  }

  @override
  DashboardController? putController() => DashboardController();
}
