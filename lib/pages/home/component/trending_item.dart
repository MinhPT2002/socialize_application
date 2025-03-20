import 'package:socialize_application/data/model/trending.dart';
import 'package:socialize_application/import.dart';

class TrendingItem extends BaseWidget with BaseMixin {
  TrendingItem({super.key, required this.trending});
  final Trending trending;

  @override
  Widget builder() {
    return Stack(
      children: [
        Container(
          width: 186,
          margin: EdgeInsets.only(right: 16.r),
          decoration: BoxDecoration(
            color: color.white,
            boxShadow: [
              BoxShadow(
                color: color.black.withOpacity(0.25),
                offset: const Offset(1, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_coverImage(), _info()],
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Image.asset(trending.avatar ?? ''),
        ),
        Positioned(
          top: 97,
          left: 70,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  color.colorFF7A00,
                  color.colorFF0505.withOpacity(0.58),
                ],
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(AssetIcons.iconStar),
                Padding(
                  padding: EdgeInsets.only(left: 2.r),
                  child: Text(
                    trending.countStar ?? '',
                    style: textStyle.bold(size: 10, color: color.colorF2FFFD),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _info() {
    return Padding(
      padding: EdgeInsets.only(top: 35.h, left: 8.r, right: 8.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_headerWidget(), _countMember(), _descriptionWidget()],
      ),
    );
  }

  Widget _coverImage() {
    return Stack(
      children: [
        Image.asset(trending.coverImage ?? ''),
        Positioned(
          top: 4,
          left: 4,
          child: Container(
            decoration: BoxDecoration(
                color: color.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(width: 2, color: color.white.withOpacity(0.75))),
            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.r),
            child: Text(
              trending.userActive ?? '',
              style: textStyle.regular(size: 10, color: color.white),
            ),
          ),
        ),
        if (isNotNullOrEmpty(trending.no))
          Positioned(
            right: 9,
            child: Stack(
              children: [
                SvgPicture.asset(AssetIcons.iconFlag),
                Positioned.fill(
                  top: 3,
                  child: Text(
                    trending.no!,
                    style: textStyle.medium(size: 16, color: color.white),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          )
      ],
    );
  }

  Widget _headerWidget() {
    return Row(
      children: [
        Text(
          trending.title ?? '',
          style: textStyle.semiBold(size: 14),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.r),
          child: SvgPicture.asset(AssetIcons.iconTick),
        ),
      ],
    );
  }

  Widget _countMember() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Text(
        '859 members',
        style: textStyle.regular(size: 10, color: color.black.withOpacity(0.7)),
      ),
    );
  }

  Widget _descriptionWidget() {
    return Text(
      trending.description ?? '',
      style: textStyle.regular(size: 14, color: color.black.withOpacity(0.75)),
    );
  }
}
