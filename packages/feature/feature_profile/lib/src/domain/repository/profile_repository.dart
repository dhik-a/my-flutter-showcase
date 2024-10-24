import 'package:feature_profile/src/domain/entity/profile.dart';

abstract class ProfileRepository {
  Future<bool> saveProfile(Profile profile);
}
