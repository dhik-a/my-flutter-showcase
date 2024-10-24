import 'package:feature_profile/src/data/model/profile_model.dart';
import 'package:feature_profile/src/domain/entity/profile.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileMapper {
  ProfileModel mapFromDomain(Profile profile) {
    return ProfileModel(
      fullName: profile.fullName.isNotEmpty ? profile.fullName : null,
      title: profile.title.isNotEmpty ? profile.title : null,
      description: profile.description.isNotEmpty ? profile.description : null,
      birthDate: profile.birthDate.isNotEmpty ? profile.birthDate : null,
      country: profile.country.isNotEmpty ? profile.country : null,
      city: profile.city.isNotEmpty ? profile.city : null,
      email: profile.email.isNotEmpty ? profile.email : null,
      phone: profile.phone.isNotEmpty ? profile.phone : null,
      skills: profile.skills.isNotEmpty ? profile.skills : null,
    );
  }
}
