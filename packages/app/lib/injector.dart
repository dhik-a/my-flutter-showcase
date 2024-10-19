import 'package:feature_dashboard/feature_dashboard.dart';

Future<void> configureDependencies() async {
  // Feature Dependency Injection
  FeatureDashboardConfig.getInstance().init();
}