import 'package:socialize_application/global/app_enum.dart';
import 'package:socialize_application/global/app_enum_ex.dart';
import 'package:socialize_application/import.dart';

class InterestItem extends BaseWidget with BaseMixin {
  InterestItem({
    super.key,
    required this.item,
    this.isSelected = false,
    required this.onTap,
  });
  final dynamic item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget builder() {
    String title = _getTitle(item);
    return GestureDetector(
      onTap: onTap,
      child: IntrinsicWidth(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected == true ? color.color0080FF : color.white,
              border: Border.all(
                color: color.black.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.r),
          child: Text(
            title.tr,
            style: textStyle.bold(size: 16, color: color.color001D3A),
          ),
        ),
      ),
    );
  }

  String _getTitle(Object item) {
    if (item is Professional) return item.title;
    if (item is Casual) return item.title;
    if (item is SocialCause) return item.title;
    return 'Unknown';
  }
}
