import './main_common.dart';
import './lib/data/repositories/location/location_repository_mock.dart';
import './lib/data/repositories/location/location_repository.dart';
import './lib/data/repositories/rides/ride_repository.dart';
import './lib/data/repositories/rides/ride_repository_mock.dart';
import './lib/data/repositories/ride_preferences/ride_preference_mock.dart';
import './lib/data/repositories/ride_preferences/ride_preference_repository.dart';
import 'package:provider/provider.dart';

List<InheritedProvider> get devProvider {
  return [
    Provider<LocationRepository>(create: (_) => LocationRepositoryMock()),

    Provider<RideRepository>(
      create: (context) =>
          RideRepositoryMock(context.read<LocationRepository>()),
    ),
    Provider<RidePreferenceRepository>(create: (_) => RidePreferenceMock())
  ];
}

void main() {
  mainCommon(devProvider);
}
