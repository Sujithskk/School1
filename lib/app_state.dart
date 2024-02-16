import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/api_requests/api_manager.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  String _usernameGlobal = '';
  String get usernameGlobal => _usernameGlobal;
  set usernameGlobal(String value) {
    _usernameGlobal = value;
  }

  String _classSection = '';
  String get classSection => _classSection;
  set classSection(String value) {
    _classSection = value;
  }

  String _dob = '';
  String get dob => _dob;
  set dob(String value) {
    _dob = value;
  }

  String _roll = '';
  String get roll => _roll;
  set roll(String value) {
    _roll = value;
  }

  String _profileurl = '';
  String get profileurl => _profileurl;
  set profileurl(String value) {
    _profileurl = value;
  }

  final _homeWorkManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> homeWork({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _homeWorkManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearHomeWorkCache() => _homeWorkManager.clear();
  void clearHomeWorkCacheKey(String? uniqueKey) =>
      _homeWorkManager.clearRequest(uniqueKey);

  final _upComingEventsManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> upComingEvents({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _upComingEventsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUpComingEventsCache() => _upComingEventsManager.clear();
  void clearUpComingEventsCacheKey(String? uniqueKey) =>
      _upComingEventsManager.clearRequest(uniqueKey);
}
