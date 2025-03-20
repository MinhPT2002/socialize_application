import 'package:socialize_application/common/widget_components/button/widget_button.dart';
import 'package:socialize_application/import.dart';
import 'package:socialize_application/pages/interest/component/interest_item.dart';
import 'package:socialize_application/pages/interest/interest_controller.dart';

class InterestPage extends BaseScreen<InterestController> {
  InterestPage({super.key});

  @override
  Widget builder() {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color.backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h, top: 50.h),
                  child: Text(
                    LocaleKeys.selectInterest.tr,
                    style: textStyle.regular(
                      size: 24,
                      color: color.black,
                    ),
                  ),
                ),
                _professionalWidget(),
                _casualWidget(),
                _socialCauseWidget(),
                _actionButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _professionalWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.professional.tr,
          style: textStyle.regular(size: 16),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Divider(
            color: color.black.withOpacity(0.25),
          ),
        ),
        Obx(
          () => Wrap(
            spacing: 8,
            runSpacing: 8,
            children: controller.professions
                .map((interest) => InterestItem(
                      isSelected:
                          controller.selectedInterests.contains(interest),
                      item: interest,
                      onTap: () => controller.toggleInterest(interest),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _casualWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.casual.tr,
            style: textStyle.regular(size: 16),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Divider(
              color: color.black.withOpacity(0.25),
            ),
          ),
          Obx(
            () => Wrap(
              spacing: 8,
              runSpacing: 8,
              children: controller.casuals
                  .map((interest) => InterestItem(
                        isSelected:
                            controller.selectedInterests.contains(interest),
                        item: interest,
                        onTap: () => controller.toggleInterest(interest),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialCauseWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.socialCause.tr,
          style: textStyle.regular(size: 16),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Divider(
            color: color.black.withOpacity(0.25),
          ),
        ),
        Obx(
          () => Wrap(
            spacing: 8,
            runSpacing: 8,
            children: controller.socialCauses
                .map((interest) => InterestItem(
                      isSelected:
                          controller.selectedInterests.contains(interest),
                      item: interest,
                      onTap: () => controller.toggleInterest(interest),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _addButton() {
    return WidgetButton(
      title: LocaleKeys.add.tr,
      onClick: controller.canAdd ? controller.moveToDashboard : () {},
      margin: EdgeInsets.symmetric(vertical: 40.h),
      borderRadius: 8,
      disable: !controller.canAdd,
    );
  }

  Widget _skipWidget() {
    return GestureDetector(
      onTap: controller.moveToDashboard,
      child: Text(
        LocaleKeys.skip.tr,
        style: textStyle.semiBoldUnderline(size: 16, color: color.color0080FF),
      ),
    );
  }

  Widget _actionButton() {
    return Column(
      children: [_addButton(), _skipWidget()],
    );
  }

  @override
  InterestController? putController() => InterestController();
}
