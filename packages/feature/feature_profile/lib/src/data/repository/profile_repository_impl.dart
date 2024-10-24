import 'package:feature_profile/src/data/data_source/profile_local_data_source.dart';
import 'package:feature_profile/src/data/repository/mapper/profile_mapper.dart';
import 'package:feature_profile/src/domain/entity/profile.dart';
import 'package:feature_profile/src/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileMapper profileMapper;
  final ProfileLocalDataSource localDataSource;

  ProfileRepositoryImpl(
    this.profileMapper,
    this.localDataSource,
  );

  @override
  Future<bool> saveProfile(Profile profile) async {
    final profileModel = profileMapper.mapFromDomain(profile);
    return localDataSource.saveProfileData(profileModel);
  }
}
