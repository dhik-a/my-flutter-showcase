import 'package:feature_profile/src/domain/entity/profile.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveProfile {
  Future<bool> call(Profile profile) async {
    return Future.value(true);
  }
}
