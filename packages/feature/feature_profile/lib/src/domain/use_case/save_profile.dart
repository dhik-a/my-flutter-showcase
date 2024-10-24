import 'package:feature_profile/src/domain/entity/profile.dart';
import 'package:feature_profile/src/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveProfile {
  final ProfileRepository repository;

  const SaveProfile(this.repository);

  Future<bool> call(Profile profile) async {
    return await repository.saveProfile(profile);
  }
}
