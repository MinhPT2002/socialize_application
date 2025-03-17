import 'package:socialize_application/global/app_enum.dart';
import 'package:socialize_application/import.dart';

extension ProfessionalImpl on Professional {
  String get title {
    switch (this) {
      case Professional.tech:
        return LocaleKeys.tech.tr;
      case Professional.artificialIntelligence:
        return LocaleKeys.artificialIntelligence.tr;
      case Professional.travel:
        return LocaleKeys.travel.tr;
      case Professional.politics:
        return LocaleKeys.politics.tr;
      case Professional.uxDesign:
        return LocaleKeys.uxDesign.tr;
      case Professional.scriptWriting:
        return LocaleKeys.scriptWriting.tr;
      case Professional.music:
        return LocaleKeys.music.tr;
      case Professional.business:
        return LocaleKeys.business.tr;
      case Professional.finance:
        return LocaleKeys.finance.tr;
    }
  }
}

extension CasualImpl on Casual {
  String get title {
    switch (this) {
      case Casual.gadgets:
        return LocaleKeys.gadgets.tr;
      case Casual.aiFun:
        return LocaleKeys.aiFun.tr;
      case Casual.localTrips:
        return LocaleKeys.localTrips.tr;
      case Casual.communityChat:
        return LocaleKeys.communityChat.tr;
      case Casual.easyApps:
        return LocaleKeys.easyApps.tr;
      case Casual.quickStories:
        return LocaleKeys.quickStories.tr;
      case Casual.musicMixes:
        return LocaleKeys.musicMixes.tr;
      case Casual.dailyDeals:
        return LocaleKeys.dailyDeals.tr;
      case Casual.moneyTips:
        return LocaleKeys.moneyTips.tr;
    }
  }
}

extension SocialCauseImpl on SocialCause {
  String get title {
    switch (this) {
      case SocialCause.digitalAccess:
        return LocaleKeys.digitalAccess.tr;
      case SocialCause.aiEthics:
        return LocaleKeys.aiEthics.tr;
      case SocialCause.ecoTravel:
        return LocaleKeys.ecoTravel.tr;
      case SocialCause.socialRights:
        return LocaleKeys.socialRights.tr;
      case SocialCause.inclusiveDesign:
        return LocaleKeys.inclusiveDesign.tr;
      case SocialCause.impactStories:
        return LocaleKeys.impactStories.tr;
      case SocialCause.musicAction:
        return LocaleKeys.musicAction.tr;
      case SocialCause.ethicalBiz:
        return LocaleKeys.ethicalBiz.tr;
      case SocialCause.givingBack:
        return LocaleKeys.givingBack.tr;
    }
  }
}
