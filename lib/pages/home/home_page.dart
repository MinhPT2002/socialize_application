import 'package:socialize_application/common/app_bar_custom.dart';
import 'package:socialize_application/import.dart';
import 'package:socialize_application/pages/home/component/explore_events_item.dart';
import 'package:socialize_application/pages/home/component/trending_item.dart';
import 'package:socialize_application/pages/home/home_controller.dart';

class HomePage extends BaseScreen<HomeController> {
  HomePage({super.key});

  @override
  Widget builder() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCustom(
          widgetTitle: SvgPicture.asset(AssetIcons.iconAppBar),
          leadingIcon: AssetImages.appBarLeading,
          backgroundColor: color.colorE7EFF7,
          actions: [SvgPicture.asset(AssetIcons.iconChat)],
        ),
        backgroundColor: color.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              _headerWidget(),
              _body(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetImages.homeHeaderImage),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Text(
                LocaleKeys.homeText.tr,
                textAlign: TextAlign.center,
                style: textStyle.regular(
                  size: 16,
                  color: color.color001D3B,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        children: [
          _trending(),
          _events(),
          _growthClubs(),
          _recommend(),
        ],
      ),
    );
  }

  Widget _trending() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25.h, bottom: 10.h, left: 20.r),
          child: Text(
            LocaleKeys.trendingNow.tr,
            style: textStyle.regular(size: 16),
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20.r),
            scrollDirection: Axis.horizontal,
            itemCount: controller.trendingItems.length,
            itemBuilder: (context, index) {
              return TrendingItem(trending: controller.trendingItems[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _events() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25.h, bottom: 10.h, left: 20.r),
          child: Text(
            LocaleKeys.exploreByEvents.tr,
            style: textStyle.regular(size: 16),
          ),
        ),
        SizedBox(
          height: 530,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20.r),
            scrollDirection: Axis.horizontal,
            itemCount: controller.events.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ExploreEventsItem(
                eventCard: controller.events[index],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _growthClubs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25.h, bottom: 10.h, left: 20.r),
          child: Text(
            LocaleKeys.joinGrowthClubs.tr,
            style: textStyle.regular(size: 16),
          ),
        ),
        SizedBox(
          height: 260,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20.r),
            scrollDirection: Axis.horizontal,
            itemCount: controller.growthClubs.length,
            itemBuilder: (context, index) {
              return TrendingItem(trending: controller.growthClubs[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _recommend() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25.h, bottom: 10.h, left: 20.r),
          child: Text(
            LocaleKeys.recommendForYou.tr,
            style: textStyle.regular(size: 16),
          ),
        ),
        SizedBox(
          height: 260,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20.r),
            scrollDirection: Axis.horizontal,
            itemCount: controller.recommends.length,
            itemBuilder: (context, index) {
              return TrendingItem(trending: controller.recommends[index]);
            },
          ),
        ),
      ],
    );
  }

  @override
  HomeController? putController() => HomeController();
}
