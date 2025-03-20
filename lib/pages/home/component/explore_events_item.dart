import 'package:socialize_application/data/model/event_card.dart';
import 'package:socialize_application/import.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExploreEventsItem extends StatefulWidget with BaseMixin {
  final EventCard eventCard;

  const ExploreEventsItem({super.key, required this.eventCard});

  @override
  State<ExploreEventsItem> createState() => _ExploreEventsItemState();
}

class _ExploreEventsItemState extends State<ExploreEventsItem> {
  late PageController _pageController;
  RxInt currentPage = 0.obs;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      int page = _pageController.page?.round() ?? 0;
      if (currentPage.value != page) {
        currentPage.value = page;
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288,
      margin: EdgeInsets.only(right: 16.r),
      decoration: BoxDecoration(
        color: widget.color.white,
        boxShadow: [
          BoxShadow(
            color: widget.color.black.withOpacity(0.25),
            offset: const Offset(1, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32,
            width: Get.width,
            decoration: BoxDecoration(
              color: widget.color.colorE5EBF1,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            padding: EdgeInsets.only(top: 10.h, left: 8.r),
            child: Text(
              widget.eventCard.spaceName ?? '',
              style: widget.textStyle.medium(size: 14),
            ),
          ),
          _bannerImage(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Obx(
              () => Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    activeDotColor: widget.color.color98AEAB,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ),
            ),
          ),
          _info(),
        ],
      ),
    );
  }

  Widget _bannerImage() {
    return SizedBox(
      height: 360,
      child: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          currentPage.value = index;
        },
        children: [
          Image.asset(widget.eventCard.bannerImage1 ?? ''),
          Image.asset(widget.eventCard.bannerImage2 ?? ''),
        ],
      ),
    );
  }

  Widget _info() {
    return Padding(
      padding: EdgeInsets.only(left: 16.r, right: 8.r),
      child: Column(
        children: [
          Text(
            widget.eventCard.topic ?? '',
            style: widget.textStyle.medium(size: 16),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.r),
            child: Column(
              children: [
                _contactInfo(
                    AssetIcons.iconCalendar, widget.eventCard.date ?? ''),
                _contactInfo(
                    AssetIcons.iconLocation, widget.eventCard.location ?? ''),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _contactInfo(String icon, String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.r),
            child: Text(
              text,
              style: widget.textStyle.regular(
                  size: 12, color: widget.color.black.withOpacity(0.7)),
            ),
          )
        ],
      ),
    );
  }
}
