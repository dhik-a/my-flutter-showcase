import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feature_profile/src/presentation/page/profile_input_page.dart';

import 'feature_profile_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class FeatureProfileRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: profileRouteName,
          page: ProfileRoute.page,
        ),
        AutoRoute(
          path: profileInputRouteName,
          page: ProfileInputRoute.page,
        ),
      ];
}
