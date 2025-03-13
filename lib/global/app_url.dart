// import 'package:socialize_application/config/config.dart';

// class AppUrl {
//   // static String get terms => '${AppConfig.config.baseUrl}/terms';
//   // static String get privacy => '${AppConfig.config.baseUrl}/privacy';

//   // static String get apiAutoCompleteText => '/place/autocomplete/json';
//   // static String get apiGetLocationFromID => '/place/details/json';
//   // LINK
//   static String get terms => '${AppConfig.config.baseWebviewUrl}/term';
//   static String get privacy => '${AppConfig.config.baseWebviewUrl}/privacy';
//   static String get sponsor => 'https://google.com';
//   static String get helpDesk => 'https://google.com';
//   static String get faq => 'https://google.com';
//   static String get contact => 'https://google.com';
//   static String get report => 'https://google.com';
//   static String get instruct => '${AppConfig.config.baseWebviewUrl}/manuals';
//   static String get termAndRegister => 'https://google.com';

//   // Sub domain
//   static String get apiSignIn => '/login';
//   static String get apiLogout => '/logout';
//   static String get apiRefreshToken => '/refresh';
//   static String get apiSignUp => '/register';
//   static String get apiForgotPassword => '/forgot_password';
//   static String get apiPosts => '/posts';
//   static String get apiPostDetail => '/post';
//   static String get apiListGrammars => '/grammars';
//   static String get apiGrammarDetail => '/grammar';
//   static String get apiMaster => '/master-data';
//   static String get apiTopik => '/topik';
//   static String get apiTipByTopik => '/tips';
//   static String get apiLessonByTopik => '/lessons';
//   static String get apiVideoByTopik => '/exam_preparation_videos';
//   static String get apiGrammarByTopik => '/topik_grammars';
//   static String get apiAlphabetByTopik => '/alphabets';
//   static String get apiExamByTopik => '/exams';
//   static String get apiNotifications => '/notifications';
//   static String get apiNotificationDetail => '/notification';
//   static String get apiReadNotification => '/mark-read';
//   static String get apiCountUnreadNotification => '/count';
//   static String get apiDeleteNotification => '/delete';
//   static String get apiGrammarDetailTopik => '/topik_grammar';
//   static String get apiTipTopikDetail => '/tip';
//   static String get apiVideoTopikDetail => '/exam_preparation_video';
//   static String get apiLessonTopikDetail => '/lesson';
//   static String get apiUserInfo => '/user';
//   static String get apiInterview => '/interviews';
//   static String get apiInterviewDetail => '/interview';
//   static String get apiChangePassword => '/change-password';
//   static String get apiDeleteAccount => '/account-delete';
//   static String get apiChangeLanguage => '/change-language';
//   static String get apiTrackTime => '/online-time';
//   static String get apiFcmRegister => '/fcm-register';
//   static String get apiStatistical => '/statistical';
//   static String apiSentencesCategory(int? id) =>
//       '/sentence_category/$id/sentences';

//   static String apiExamDetail(int? id) {
//     return '/exam/$id/detail';
//   }

//   static String apiExamAnswer(int? examUerId) {
//     return '/exam/$examUerId/answer';
//   }

//   static String apiTopikDetail(
//       {required int topikId, required int id, required String path}) {
//     return '/topik/$topikId$path/$id/detail';
//   }
// }
