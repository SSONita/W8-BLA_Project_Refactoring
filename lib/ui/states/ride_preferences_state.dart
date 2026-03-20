import 'package:flutter/material.dart';
import '../../data/repositories/ride_preferences/ride_preference_repository.dart';
import '../../model/ride_pref/ride_pref.dart';

class RidePreferencesState extends ChangeNotifier {
  final RidePreferenceRepository _ridePreferenceRepository;
  RidePreference? _currRidePref;
  List<RidePreference> _history = [];

  RidePreferencesState(this._ridePreferenceRepository);

  RidePreference? get currentPreference => _currRidePref;
  List<RidePreference> get history => _history;

  Future<void> init() async {
    _history = await _ridePreferenceRepository.fetchRidePref();
    notifyListeners();
  }

  Future<void> selectPreference(RidePreference preference) async {
    if (_currRidePref != preference) {
      _currRidePref = preference;
      _ridePreferenceRepository.addPreference(preference);
      _history.add(preference);
      notifyListeners();
    }
  }
}
