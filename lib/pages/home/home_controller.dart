import 'package:socialize_application/data/model/event_card.dart';
import 'package:socialize_application/data/model/trending.dart';
import 'package:socialize_application/import.dart';

class HomeController extends BaseController {
  final List<Trending> trendingItems = [
    Trending(
      avatar: AssetImages.trendingAvatar1,
      title: 'CultFit',
      description:
          'Elevate Your Fitness Goal with Cult.fit | A Space Committed to Fitness, and Personal Growth.',
      userActive: '70+ daily active users',
      coverImage: AssetImages.trendingCover1,
      no: '1',
      countStar: '4.8',
    ),
    Trending(
      avatar: AssetImages.trendingAvatar2,
      title: '1% Club',
      description:
          'Empowering Financial Futures | Join the 1% Club for Expert Personal Finance Insights.',
      userActive: '25+ daily active users',
      coverImage: AssetImages.trendingCover2,
      no: '2',
      countStar: '4.8',
    ),
    Trending(
      avatar: AssetImages.trendingAvatar3,
      title: 'Mindvalley',
      description:
          'A Premier Self-Growth Community Dedicated to Elevating Minds and Transforming Lives.',
      userActive: '40+ daily active users',
      coverImage: AssetImages.trendingCover3,
      no: '3',
      countStar: '4.8',
    ),
    Trending(
      avatar: AssetImages.trendingAvatar4,
      title: 'Muddie Trails',
      description:
          'Discover Your Authentic Journey: Join Muddie Trails for Inspired Travel and Self-Exploration',
      userActive: '30+ daily active users',
      coverImage: AssetImages.trendingCover4,
      no: '4',
      countStar: '4.5',
    ),
    Trending(
      avatar: AssetImages.trendingAvatar5,
      title: 'eChai',
      description:
          'Join the eChai Startup Network for unparalleled support on your startup journey',
      userActive: '30+ daily active users',
      coverImage: AssetImages.trendingCover5,
      no: '5',
      countStar: '4.2',
    ),
  ];

  final List<Trending> growthClubs = [
    Trending(
      avatar: AssetImages.growthClub1,
      title: 'UX Mastery',
      description:
          'Empowering our UX designers with expert insights and practical tips.',
      userActive: '70+ daily active users',
      coverImage: AssetImages.growthClubCover1,
      countStar: '4.2',
    ),
    Trending(
      avatar: AssetImages.growthClub2,
      title: 'Epicrew',
      description:
          'A community centered around seeking and offering help. So that we all can grow.',
      userActive: '40+ daily active users',
      coverImage: AssetImages.growthClubCover2,
      countStar: '4.0',
    ),
    Trending(
      avatar: AssetImages.growthClub3,
      title: 'Bhive',
      description:
          'A place to connect and learn with other corporate purpose leaders | 700+ iconic brands.',
      userActive: '30+ daily active users',
      coverImage: AssetImages.growthClubCover3,
      countStar: '3.8',
    ),
    Trending(
      avatar: AssetImages.growthClub4,
      title: 'Vogue',
      description:
          'VOGUE is the one-stop destination for women\'s fashion, beauty and lifestyle content.',
      userActive: '28+ daily active users',
      coverImage: AssetImages.growthClubCover4,
      countStar: '3.4',
    ),
  ];

  final List<Trending> recommends = [
    Trending(
      avatar: AssetImages.recommendAvatar1,
      title: 'Designality',
      description:
          'Get daily inspirations, design challenges, and the latest trends in the world of user experience.',
      userActive: '70+ daily active users',
      coverImage: AssetImages.recommendCover1,
      countStar: '4.8',
    ),
    Trending(
      avatar: AssetImages.recommendAvatar2,
      title: 'Future Interfaces',
      description:
          'We discuss cutting-edge technologies, design thinking, and the evolution of user interfaces.',
      userActive: '25+ daily active users',
      coverImage: AssetImages.recommendCover2,
      countStar: '3.4',
    ),
    Trending(
      avatar: AssetImages.recommendAvatar3,
      title: 'The UX Book Club',
      description:
          'Engage with fellow UXers, share insights, and join virtual book club discussions',
      userActive: '30+ daily active users',
      coverImage: AssetImages.recommendCover3,
      countStar: '4.8',
    ),
    Trending(
      avatar: AssetImages.recommendAvatar4,
      title: 'Pixel Art',
      description:
          'Space where UXers  share projects, seek feedback, and celebrate pixel perfection in a vibrant community',
      userActive: '30+ daily active users',
      coverImage: AssetImages.recommendCover4,
      countStar: '3.4',
    ),
  ];

  final List<EventCard> events = [
    EventCard(
      topic: 'Cooking Extravaganza with Culinary Celeb',
      spaceName: 'Culinary Club',
      bannerImage1: AssetImages.eventBanner1,
      bannerImage2: AssetImages.eventBanner1,
      date: '21 Dec, 23 | Wed | 7:00 to 9:00 AM',
      location: 'Live in Vaulture',
    ),
    EventCard(
      topic: 'Unleashing Art with a Hollywood Sketch Artist',
      spaceName: 'UX Rescue',
      bannerImage1: AssetImages.eventBanner2,
      bannerImage2: AssetImages.eventBanner2,
      date: '21 Dec, 23 | Wed | 8:00 to 9:30 PM',
      location: 'Live in Vaulture',
    ),
    EventCard(
      topic: 'A Makeover Session with Interior Design Enthusiast',
      spaceName: 'Interior Design',
      bannerImage1: AssetImages.eventBanner3,
      bannerImage2: AssetImages.eventBanner3,
      date: '24 Dec, 23 | Wed | 9:00 to 11:00 PM',
      location: 'Live in Vaulture',
    ),
    EventCard(
      topic: 'Cult Fit Marathon with Ranveer Singh',
      spaceName: 'Cultfit',
      bannerImage1: AssetImages.eventBanner4,
      bannerImage2: AssetImages.eventBanner4,
      date: '20 Dec, 23 | Wed | 7:00 to 9:00 AM',
      location: 'Pheonix Palledium, Mumbai - 462042',
    ),
  ];
}
