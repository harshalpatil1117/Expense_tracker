import 'dart:async';
import 'dart:convert';

import 'package:network/core/shared_preferences/preferences.dart';
// import 'package:network/menu_access/data/model/model.dart';

class SharedPreferenceHelper {
  final Preference _sharedPreference;

  const SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------

  Future<void> saveSubUserId(int subUserId) async {
    await _sharedPreference.setInt(PrefKeys.subUserId, subUserId);
  }

  int? get subUserId {
    return _sharedPreference.getInt(PrefKeys.subUserId);
  }

}

mixin PrefKeys {
  static const String subUserId = 'subUserId';
}

enum AppLocal { en, ar }
