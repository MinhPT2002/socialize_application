import 'package:socialize_application/common/widget_components/loading/custom_loading.dart';
import 'package:socialize_application/import.dart';

Widget get appLoading => SizedBox(
      child: Center(
        child: CustomLoading(
            color: appThemes.mainColor, type: CustomLoadingType.start),
      ),
    );
