import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _plantTitlesList =
          prefs.getStringList('ff_plantTitlesList') ?? _plantTitlesList;
    });
    _safeInit(() {
      _plantImagesList =
          prefs.getStringList('ff_plantImagesList') ?? _plantImagesList;
    });
    _safeInit(() {
      _plantBodyTextList =
          prefs.getStringList('ff_plantBodyTextList') ?? _plantBodyTextList;
    });
    _safeInit(() {
      _plantPopNames =
          prefs.getStringList('ff_plantPopNames') ?? _plantPopNames;
    });
    _safeInit(() {
      _plantOrigins = prefs.getStringList('ff_plantOrigins') ?? _plantOrigins;
    });
    _safeInit(() {
      _plantFamily = prefs.getString('ff_plantFamily') ?? _plantFamily;
    });
    _safeInit(() {
      _plantName = prefs.getString('ff_plantName') ?? _plantName;
    });
    _safeInit(() {
      _plantCientName = prefs.getString('ff_plantCientName') ?? _plantCientName;
    });
    _safeInit(() {
      _plantUsedPart = prefs.getString('ff_plantUsedPart') ?? _plantUsedPart;
    });
    _safeInit(() {
      _plantSenses = prefs.getStringList('ff_plantSenses') ?? _plantSenses;
    });
    _safeInit(() {
      _plantImagesData = prefs.getStringList('ff_plantImagesData')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _plantImagesData;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  List<String> _plantTitlesList = [];
  List<String> get plantTitlesList => _plantTitlesList;
  set plantTitlesList(List<String> value) {
    _plantTitlesList = value;
    prefs.setStringList('ff_plantTitlesList', value);
  }

  void addToPlantTitlesList(String value) {
    plantTitlesList.add(value);
    prefs.setStringList('ff_plantTitlesList', _plantTitlesList);
  }

  void removeFromPlantTitlesList(String value) {
    plantTitlesList.remove(value);
    prefs.setStringList('ff_plantTitlesList', _plantTitlesList);
  }

  void removeAtIndexFromPlantTitlesList(int index) {
    plantTitlesList.removeAt(index);
    prefs.setStringList('ff_plantTitlesList', _plantTitlesList);
  }

  void updatePlantTitlesListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    plantTitlesList[index] = updateFn(_plantTitlesList[index]);
    prefs.setStringList('ff_plantTitlesList', _plantTitlesList);
  }

  void insertAtIndexInPlantTitlesList(int index, String value) {
    plantTitlesList.insert(index, value);
    prefs.setStringList('ff_plantTitlesList', _plantTitlesList);
  }

  List<String> _plantImagesList = [];
  List<String> get plantImagesList => _plantImagesList;
  set plantImagesList(List<String> value) {
    _plantImagesList = value;
    prefs.setStringList('ff_plantImagesList', value);
  }

  void addToPlantImagesList(String value) {
    plantImagesList.add(value);
    prefs.setStringList('ff_plantImagesList', _plantImagesList);
  }

  void removeFromPlantImagesList(String value) {
    plantImagesList.remove(value);
    prefs.setStringList('ff_plantImagesList', _plantImagesList);
  }

  void removeAtIndexFromPlantImagesList(int index) {
    plantImagesList.removeAt(index);
    prefs.setStringList('ff_plantImagesList', _plantImagesList);
  }

  void updatePlantImagesListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    plantImagesList[index] = updateFn(_plantImagesList[index]);
    prefs.setStringList('ff_plantImagesList', _plantImagesList);
  }

  void insertAtIndexInPlantImagesList(int index, String value) {
    plantImagesList.insert(index, value);
    prefs.setStringList('ff_plantImagesList', _plantImagesList);
  }

  List<String> _plantBodyTextList = [];
  List<String> get plantBodyTextList => _plantBodyTextList;
  set plantBodyTextList(List<String> value) {
    _plantBodyTextList = value;
    prefs.setStringList('ff_plantBodyTextList', value);
  }

  void addToPlantBodyTextList(String value) {
    plantBodyTextList.add(value);
    prefs.setStringList('ff_plantBodyTextList', _plantBodyTextList);
  }

  void removeFromPlantBodyTextList(String value) {
    plantBodyTextList.remove(value);
    prefs.setStringList('ff_plantBodyTextList', _plantBodyTextList);
  }

  void removeAtIndexFromPlantBodyTextList(int index) {
    plantBodyTextList.removeAt(index);
    prefs.setStringList('ff_plantBodyTextList', _plantBodyTextList);
  }

  void updatePlantBodyTextListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    plantBodyTextList[index] = updateFn(_plantBodyTextList[index]);
    prefs.setStringList('ff_plantBodyTextList', _plantBodyTextList);
  }

  void insertAtIndexInPlantBodyTextList(int index, String value) {
    plantBodyTextList.insert(index, value);
    prefs.setStringList('ff_plantBodyTextList', _plantBodyTextList);
  }

  List<String> _plantPopNames = [];
  List<String> get plantPopNames => _plantPopNames;
  set plantPopNames(List<String> value) {
    _plantPopNames = value;
    prefs.setStringList('ff_plantPopNames', value);
  }

  void addToPlantPopNames(String value) {
    plantPopNames.add(value);
    prefs.setStringList('ff_plantPopNames', _plantPopNames);
  }

  void removeFromPlantPopNames(String value) {
    plantPopNames.remove(value);
    prefs.setStringList('ff_plantPopNames', _plantPopNames);
  }

  void removeAtIndexFromPlantPopNames(int index) {
    plantPopNames.removeAt(index);
    prefs.setStringList('ff_plantPopNames', _plantPopNames);
  }

  void updatePlantPopNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    plantPopNames[index] = updateFn(_plantPopNames[index]);
    prefs.setStringList('ff_plantPopNames', _plantPopNames);
  }

  void insertAtIndexInPlantPopNames(int index, String value) {
    plantPopNames.insert(index, value);
    prefs.setStringList('ff_plantPopNames', _plantPopNames);
  }

  List<String> _plantOrigins = [];
  List<String> get plantOrigins => _plantOrigins;
  set plantOrigins(List<String> value) {
    _plantOrigins = value;
    prefs.setStringList('ff_plantOrigins', value);
  }

  void addToPlantOrigins(String value) {
    plantOrigins.add(value);
    prefs.setStringList('ff_plantOrigins', _plantOrigins);
  }

  void removeFromPlantOrigins(String value) {
    plantOrigins.remove(value);
    prefs.setStringList('ff_plantOrigins', _plantOrigins);
  }

  void removeAtIndexFromPlantOrigins(int index) {
    plantOrigins.removeAt(index);
    prefs.setStringList('ff_plantOrigins', _plantOrigins);
  }

  void updatePlantOriginsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    plantOrigins[index] = updateFn(_plantOrigins[index]);
    prefs.setStringList('ff_plantOrigins', _plantOrigins);
  }

  void insertAtIndexInPlantOrigins(int index, String value) {
    plantOrigins.insert(index, value);
    prefs.setStringList('ff_plantOrigins', _plantOrigins);
  }

  String _plantFamily = '';
  String get plantFamily => _plantFamily;
  set plantFamily(String value) {
    _plantFamily = value;
    prefs.setString('ff_plantFamily', value);
  }

  String _plantName = '';
  String get plantName => _plantName;
  set plantName(String value) {
    _plantName = value;
    prefs.setString('ff_plantName', value);
  }

  String _plantCientName = '';
  String get plantCientName => _plantCientName;
  set plantCientName(String value) {
    _plantCientName = value;
    prefs.setString('ff_plantCientName', value);
  }

  String _plantUsedPart = '';
  String get plantUsedPart => _plantUsedPart;
  set plantUsedPart(String value) {
    _plantUsedPart = value;
    prefs.setString('ff_plantUsedPart', value);
  }

  List<String> _plantSenses = [];
  List<String> get plantSenses => _plantSenses;
  set plantSenses(List<String> value) {
    _plantSenses = value;
    prefs.setStringList('ff_plantSenses', value);
  }

  void addToPlantSenses(String value) {
    plantSenses.add(value);
    prefs.setStringList('ff_plantSenses', _plantSenses);
  }

  void removeFromPlantSenses(String value) {
    plantSenses.remove(value);
    prefs.setStringList('ff_plantSenses', _plantSenses);
  }

  void removeAtIndexFromPlantSenses(int index) {
    plantSenses.removeAt(index);
    prefs.setStringList('ff_plantSenses', _plantSenses);
  }

  void updatePlantSensesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    plantSenses[index] = updateFn(_plantSenses[index]);
    prefs.setStringList('ff_plantSenses', _plantSenses);
  }

  void insertAtIndexInPlantSenses(int index, String value) {
    plantSenses.insert(index, value);
    prefs.setStringList('ff_plantSenses', _plantSenses);
  }

  List<dynamic> _plantImagesData = [];
  List<dynamic> get plantImagesData => _plantImagesData;
  set plantImagesData(List<dynamic> value) {
    _plantImagesData = value;
    prefs.setStringList(
        'ff_plantImagesData', value.map((x) => jsonEncode(x)).toList());
  }

  void addToPlantImagesData(dynamic value) {
    plantImagesData.add(value);
    prefs.setStringList('ff_plantImagesData',
        _plantImagesData.map((x) => jsonEncode(x)).toList());
  }

  void removeFromPlantImagesData(dynamic value) {
    plantImagesData.remove(value);
    prefs.setStringList('ff_plantImagesData',
        _plantImagesData.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromPlantImagesData(int index) {
    plantImagesData.removeAt(index);
    prefs.setStringList('ff_plantImagesData',
        _plantImagesData.map((x) => jsonEncode(x)).toList());
  }

  void updatePlantImagesDataAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    plantImagesData[index] = updateFn(_plantImagesData[index]);
    prefs.setStringList('ff_plantImagesData',
        _plantImagesData.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInPlantImagesData(int index, dynamic value) {
    plantImagesData.insert(index, value);
    prefs.setStringList('ff_plantImagesData',
        _plantImagesData.map((x) => jsonEncode(x)).toList());
  }

  List<LatLng> _teste = [];
  List<LatLng> get teste => _teste;
  set teste(List<LatLng> value) {
    _teste = value;
  }

  void addToTeste(LatLng value) {
    teste.add(value);
  }

  void removeFromTeste(LatLng value) {
    teste.remove(value);
  }

  void removeAtIndexFromTeste(int index) {
    teste.removeAt(index);
  }

  void updateTesteAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    teste[index] = updateFn(_teste[index]);
  }

  void insertAtIndexInTeste(int index, LatLng value) {
    teste.insert(index, value);
  }

  DocumentReference? _plantReference;
  DocumentReference? get plantReference => _plantReference;
  set plantReference(DocumentReference? value) {
    _plantReference = value;
  }

  bool _lovePlantState = false;
  bool get lovePlantState => _lovePlantState;
  set lovePlantState(bool value) {
    _lovePlantState = value;
  }

  int _indexLovePlant = 0;
  int get indexLovePlant => _indexLovePlant;
  set indexLovePlant(int value) {
    _indexLovePlant = value;
  }

  String _SpeechText = '';
  String get SpeechText => _SpeechText;
  set SpeechText(String value) {
    _SpeechText = value;
  }

  bool _SpeechStop = false;
  bool get SpeechStop => _SpeechStop;
  set SpeechStop(bool value) {
    _SpeechStop = value;
  }
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
