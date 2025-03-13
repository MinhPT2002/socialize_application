import 'package:socialize_application/base/loading_wrapper.dart';
import 'package:socialize_application/controller/global_data_manager.dart';
// import 'package:socialize_application/controller/master_manager.dart';
import 'package:socialize_application/controller/remote_manager.dart';
import 'package:socialize_application/import.dart';

Future<void> setupLocator() async {
  Get.put<AppThemeBase>(AppThemeBase());

  Get.put<RemoteManager>(RemoteManager());

  Get.put<LoadingController>(LoadingController());

  Get.put<GlobalDataManager>(GlobalDataManager());
}
