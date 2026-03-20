import './ride_preference_repository.dart';
import '../../../model/ride_pref/ride_pref.dart';

class RidePreferenceMock implements RidePreferenceRepository {
  final List<RidePreference> _history = [];
  @override
  List<RidePreference> fetchRidePref() {
    return _history;
  }

  @override
  void addPreference(RidePreference preference) {
    _history.add(preference);
  }
}
