import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:feature_dashboard/feature_dashboard.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    ...FeatureDashboardRouter().routes,
  ];
}