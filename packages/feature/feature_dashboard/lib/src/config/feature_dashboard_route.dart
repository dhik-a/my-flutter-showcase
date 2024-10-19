import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';

import 'feature_dashboard_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class FeatureDashboardRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: dashboardRouteName, page: DashboardRoute.page),
  ];
}