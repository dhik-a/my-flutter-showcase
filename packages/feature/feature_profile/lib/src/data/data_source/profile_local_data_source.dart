import 'package:feature_profile/src/data/model/profile_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProfileLocalDataSource {
  Future<bool> saveProfileData(ProfileModel profile);
}

@LazySingleton(as: ProfileLocalDataSource)
class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final SharedPreferences sharedPref;

  ProfileLocalDataSourceImpl({
    required this.sharedPref,
  });

  @override
  Future<bool> saveProfileData(profile) async {
    return await sharedPref.setString('profile', '');
  }
}
