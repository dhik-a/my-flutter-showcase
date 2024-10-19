import 'package:feature_dashboard/feature_dashboard.dart';
import 'package:feature_profile/feature_profile.dart';

Future<void> configureDependencies() async {
  // Feature Dependency Injection
  FeatureDashboardConfig.getInstance().init();
  FeatureProfileConfig.getInstance().init();
}