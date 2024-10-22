import 'package:feature_profile/src/domain/entity/profile.dart';

class SaveProfile {
  Future<bool> call(Profile profile) async {
    return Future.value(true);
  }
}
