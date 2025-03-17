import 'package:socialize_application/global/app_enum.dart';
import 'package:socialize_application/import.dart';

class InterestController extends BaseController {
  RxList<Professional> professions = Professional.values.obs;
  RxList<Casual> casuals = Casual.values.obs;
  RxList<SocialCause> socialCauses = SocialCause.values.obs;

  RxList<dynamic> selectedInterests = <dynamic>[].obs;

  void toggleInterest(dynamic interest) {
    if (selectedInterests.contains(interest)) {
      selectedInterests.remove(interest);
    } else {
      selectedInterests.add(interest);
    }
  }

  bool get canAdd => selectedInterests.length >= 3;
}
