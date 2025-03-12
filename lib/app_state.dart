import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isExpanded = prefs.getBool('ff_isExpanded') ?? _isExpanded;
    });
    _safeInit(() {
      _expandMap = prefs.getStringList('ff_expandMap') ?? _expandMap;
    });
    _safeInit(() {
      _temID = prefs.getInt('ff_temID') ?? _temID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isExpanded = true;
  bool get isExpanded => _isExpanded;
  set isExpanded(bool value) {
    _isExpanded = value;
    prefs.setBool('ff_isExpanded', value);
  }

  List<String> _expandMap = ['Shipment record', 'dialy check'];
  List<String> get expandMap => _expandMap;
  set expandMap(List<String> value) {
    _expandMap = value;
    prefs.setStringList('ff_expandMap', value);
  }

  void addToExpandMap(String value) {
    expandMap.add(value);
    prefs.setStringList('ff_expandMap', _expandMap);
  }

  void removeFromExpandMap(String value) {
    expandMap.remove(value);
    prefs.setStringList('ff_expandMap', _expandMap);
  }

  void removeAtIndexFromExpandMap(int index) {
    expandMap.removeAt(index);
    prefs.setStringList('ff_expandMap', _expandMap);
  }

  void updateExpandMapAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    expandMap[index] = updateFn(_expandMap[index]);
    prefs.setStringList('ff_expandMap', _expandMap);
  }

  void insertAtIndexInExpandMap(int index, String value) {
    expandMap.insert(index, value);
    prefs.setStringList('ff_expandMap', _expandMap);
  }

  int _temID = -1;
  int get temID => _temID;
  set temID(int value) {
    _temID = value;
    prefs.setInt('ff_temID', value);
  }

  int _numberOne = 0;
  int get numberOne => _numberOne;
  set numberOne(int value) {
    _numberOne = value;
  }

  bool _render = false;
  bool get render => _render;
  set render(bool value) {
    _render = value;
  }

  String _isCompleted = '';
  String get isCompleted => _isCompleted;
  set isCompleted(String value) {
    _isCompleted = value;
  }

  String _departmentID = '';
  String get departmentID => _departmentID;
  set departmentID(String value) {
    _departmentID = value;
  }

  String _departmentName = '';
  String get departmentName => _departmentName;
  set departmentName(String value) {
    _departmentName = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
  }

  final _taskCacheManager = FutureRequestManager<List<TaskRow>>();
  Future<List<TaskRow>> taskCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<TaskRow>> Function() requestFn,
  }) =>
      _taskCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTaskCacheCache() => _taskCacheManager.clear();
  void clearTaskCacheCacheKey(String? uniqueKey) =>
      _taskCacheManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
