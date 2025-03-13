// import 'package:socialize_application/data/model/common/master_data.dart';
// import 'package:socialize_application/data/model/common/sentence_category.dart';
// import 'package:socialize_application/data/model/common/topik_level.dart';
// import 'package:socialize_application/data/model/home/home_category.dart';
// import 'package:socialize_application/data/use_case/common_use_case.dart';

// class MasterManager {
//   factory MasterManager() {
//     return _singleton;
//   }

//   MasterManager._internal() {
//     _initData(categoryId: 1, sentenceCategory: 1, topikLevel: 1);
//   }

//   static final MasterManager _singleton = MasterManager._internal();

//   final CommonUseCase _commonUseCase = CommonUseCase();
//   final List<SentenceCategory> _sentenceCategories = [];
//   final List<TopikLevel> _topikLevel = [];
//   final List<HomeCategory> _categories = [];

//   void _initData({int? categoryId, int? topikLevel, int? sentenceCategory}) {
//     _commonUseCase.getMasterData(
//         sentenceCategories: sentenceCategory,
//         topikLevel: topikLevel,
//         categoryId: categoryId,
//         onSuccess: (MasterData data) {
//           _sentenceCategories.addAll(data.sentence_categories ?? []);
//           _topikLevel.addAll(data.topik_levels ?? []);
//           _categories.addAll(data.categories ?? []);
//         },
//         onFailure: (error) {});
//   }

//   Future _updateData(
//       {int? categoryId, int? topikLevel, int? sentenceCategory}) async {
//     await _commonUseCase.getMasterData(
//         sentenceCategories: sentenceCategory,
//         topikLevel: topikLevel,
//         categoryId: categoryId,
//         onSuccess: (MasterData data) {
//           _sentenceCategories.addAll(data.sentence_categories ?? []);
//           _topikLevel.addAll(data.topik_levels ?? []);
//           _categories.addAll(data.categories ?? []);
//         },
//         onFailure: (error) {});
//   }

//   Future<List<TopikLevel>> getTopikLevel({int? topikLevel}) async {
//     if (_topikLevel.isEmpty) {
//       await _updateData(topikLevel: topikLevel);
//     }
//     return _topikLevel;
//   }

//   Future<List<SentenceCategory>> getSentenceCategories(
//       {int? sentenceCategory}) async {
//     if (_sentenceCategories.isEmpty) {
//       await _updateData(sentenceCategory: sentenceCategory);
//     }
//     return _sentenceCategories;
//   }

//   Future<List<HomeCategory>> getCategories({int? categoryId}) async {
//     if (_categories.isEmpty) {
//       await _updateData(categoryId: categoryId);
//     }
//     return _categories;
//   }
// }
