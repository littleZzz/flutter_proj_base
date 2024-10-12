import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

///单例封装全局使用本地存储
///  get_storage: ^2.0.3
///  shared_preferences: ^2.3.2
///
class AppStorage {
  AppStorage._();

  static final AppStorage _instance = AppStorage._();

  /// Returns an instance using the default [AppStorage].
  static AppStorage get instance => _instance;

  static const _tokenKey = 'token_key';
  static const _userKey = 'user_key';
  static const _languageKey = 'language_key';
  static const _currencyKey = 'currency_key';
  static const _parcelGuideSwitchKey = 'parcel_guide_switch_key';
  static const _firebaseInstanceIdKey = 'firebaseInstanceId_key';
  static const _hasShowPodTooltipKey = 'hasShowPodTooltipKey';

  late final GetStorage _getStorage = GetStorage();

  void setParam(String key, dynamic value) {
    _getStorage.write(key, value);
  }

  dynamic getParam(String key) {
    return _getStorage.read(key);
  }

  void removeParam(String key) {
    _getStorage.remove(key);
  }

  void setParamWithTimeout(String key, dynamic value, Duration duration) {
    _getStorage.write(key, value);
    _getStorage.write(
        "${key}_timeout", DateTime.now().add(duration).millisecondsSinceEpoch);
  }

  dynamic getParamWithTimeout(String key) {
    if (_getStorage.read("${key}_timeout") is int) {
      if (_getStorage.read("${key}_timeout") >
          DateTime.now().millisecondsSinceEpoch) {
        return _getStorage.read(key);
      } else {
        //删除过期缓存
        _getStorage.remove("${key}_timeout");
        _getStorage.remove(key);
      }
    }

    return null;
  }

  void setToken(String token) {
    debugPrint('setToken >>> $token');
    _getStorage.write(_tokenKey, token);
  }

  String? getToken() {
    return _getStorage.read(_tokenKey);
  }

  void removeToken() {
    _getStorage.remove(_tokenKey);
  }

  void removeUser() {
    _getStorage.remove(_userKey);
  }

  void setLanguage(String language) {
    _getStorage.write(_languageKey, language);
  }

  String getLanguage() {
    return _getStorage.read(_languageKey) ?? "en";
  }

  void removeLanguage() {
    _getStorage.remove(_languageKey);
  }

  void setCurrency(String currency) {
    _getStorage.write(_currencyKey, currency);
  }

  String? getCurrency() {
    return _getStorage.read(_currencyKey);
  }

  void removeCurrency() {
    _getStorage.remove(_currencyKey);
  }

  void setParcelGuideSwitch() {
    final expiredTimestamp = DateTime.now()
        .add(const Duration(
            hours: 23, minutes: 59, seconds: 59, milliseconds: 999))
        .millisecondsSinceEpoch;
    _getStorage.write(_parcelGuideSwitchKey, expiredTimestamp);
  }

  bool getParcelGuideSwitch() {
    if (_getStorage.read(_parcelGuideSwitchKey) is int) {
      if (_getStorage.read(_parcelGuideSwitchKey) >
          DateTime.now().millisecondsSinceEpoch) {
        return false;
      } else {
        // 删除过期缓存
        _getStorage.remove(_parcelGuideSwitchKey);
      }
    }
    return true;
  }

  void removeParcelGuideSwitch() {
    _getStorage.remove(_parcelGuideSwitchKey);
  }

  void setFirebaseInstanceId(String firebaseInstanceId) {
    _getStorage.write(_firebaseInstanceIdKey, firebaseInstanceId);
  }

  String? getFirebaseInstanceId() {
    return _getStorage.read(_firebaseInstanceIdKey);
  }

  void setHasShowPodTooltipKey() {
    _getStorage.write(_hasShowPodTooltipKey, true);
  }

  bool getHasShowPodTooltipKey() {
    return _getStorage.read(_hasShowPodTooltipKey) ?? false;
  }

  void clear() {
    _getStorage.erase();
  }
}
