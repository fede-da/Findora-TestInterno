import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _ListaRisposte = [];
  List<int> get ListaRisposte => _ListaRisposte;
  set ListaRisposte(List<int> value) {
    _ListaRisposte = value;
  }

  void addToListaRisposte(int value) {
    ListaRisposte.add(value);
  }

  void removeFromListaRisposte(int value) {
    ListaRisposte.remove(value);
  }

  void removeAtIndexFromListaRisposte(int index) {
    ListaRisposte.removeAt(index);
  }

  void updateListaRisposteAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    ListaRisposte[index] = updateFn(_ListaRisposte[index]);
  }

  void insertAtIndexInListaRisposte(int index, int value) {
    ListaRisposte.insert(index, value);
  }

  RisposteQuestionarioStruct _questLocalRespAS =
      RisposteQuestionarioStruct.fromSerializableMap(jsonDecode('{}'));
  RisposteQuestionarioStruct get questLocalRespAS => _questLocalRespAS;
  set questLocalRespAS(RisposteQuestionarioStruct value) {
    _questLocalRespAS = value;
  }

  void updateQuestLocalRespASStruct(
      Function(RisposteQuestionarioStruct) updateFn) {
    updateFn(_questLocalRespAS);
  }

  bool _firstQuestionHasAnswered = false;
  bool get firstQuestionHasAnswered => _firstQuestionHasAnswered;
  set firstQuestionHasAnswered(bool value) {
    _firstQuestionHasAnswered = value;
  }

  bool _secondQuestionHasAnswered = false;
  bool get secondQuestionHasAnswered => _secondQuestionHasAnswered;
  set secondQuestionHasAnswered(bool value) {
    _secondQuestionHasAnswered = value;
  }

  bool _thirdQuestionHasAnswered = false;
  bool get thirdQuestionHasAnswered => _thirdQuestionHasAnswered;
  set thirdQuestionHasAnswered(bool value) {
    _thirdQuestionHasAnswered = value;
  }

  bool _fourthQuestionHasAnswered = false;
  bool get fourthQuestionHasAnswered => _fourthQuestionHasAnswered;
  set fourthQuestionHasAnswered(bool value) {
    _fourthQuestionHasAnswered = value;
  }

  bool _fifthQuestionHasAnswered = false;
  bool get fifthQuestionHasAnswered => _fifthQuestionHasAnswered;
  set fifthQuestionHasAnswered(bool value) {
    _fifthQuestionHasAnswered = value;
  }

  bool _sixthQuestionHasAnswered = false;
  bool get sixthQuestionHasAnswered => _sixthQuestionHasAnswered;
  set sixthQuestionHasAnswered(bool value) {
    _sixthQuestionHasAnswered = value;
  }

  bool _seventhQuestionHasAnswered = false;
  bool get seventhQuestionHasAnswered => _seventhQuestionHasAnswered;
  set seventhQuestionHasAnswered(bool value) {
    _seventhQuestionHasAnswered = value;
  }

  bool _eighthQuestionHasAnswered = false;
  bool get eighthQuestionHasAnswered => _eighthQuestionHasAnswered;
  set eighthQuestionHasAnswered(bool value) {
    _eighthQuestionHasAnswered = value;
  }

  RisposteQuestionarioVendorStruct _questionarioVendor =
      RisposteQuestionarioVendorStruct.fromSerializableMap(jsonDecode('{}'));
  RisposteQuestionarioVendorStruct get questionarioVendor =>
      _questionarioVendor;
  set questionarioVendor(RisposteQuestionarioVendorStruct value) {
    _questionarioVendor = value;
  }

  void updateQuestionarioVendorStruct(
      Function(RisposteQuestionarioVendorStruct) updateFn) {
    updateFn(_questionarioVendor);
  }

  bool _questBoolVendor1 = false;
  bool get questBoolVendor1 => _questBoolVendor1;
  set questBoolVendor1(bool value) {
    _questBoolVendor1 = value;
  }

  bool _questBoolVendor2 = false;
  bool get questBoolVendor2 => _questBoolVendor2;
  set questBoolVendor2(bool value) {
    _questBoolVendor2 = value;
  }

  bool _questBoolVendor3 = false;
  bool get questBoolVendor3 => _questBoolVendor3;
  set questBoolVendor3(bool value) {
    _questBoolVendor3 = value;
  }

  bool _questBoolVendor4 = false;
  bool get questBoolVendor4 => _questBoolVendor4;
  set questBoolVendor4(bool value) {
    _questBoolVendor4 = value;
  }

  bool _questBoolVendor5 = false;
  bool get questBoolVendor5 => _questBoolVendor5;
  set questBoolVendor5(bool value) {
    _questBoolVendor5 = value;
  }

  bool _questBoolVendor6 = false;
  bool get questBoolVendor6 => _questBoolVendor6;
  set questBoolVendor6(bool value) {
    _questBoolVendor6 = value;
  }

  bool _questBoolVendor7 = false;
  bool get questBoolVendor7 => _questBoolVendor7;
  set questBoolVendor7(bool value) {
    _questBoolVendor7 = value;
  }

  bool _questBoolVendor8 = false;
  bool get questBoolVendor8 => _questBoolVendor8;
  set questBoolVendor8(bool value) {
    _questBoolVendor8 = value;
  }

  bool _questBoolVendor9 = false;
  bool get questBoolVendor9 => _questBoolVendor9;
  set questBoolVendor9(bool value) {
    _questBoolVendor9 = value;
  }

  bool _questBoolVendor10 = false;
  bool get questBoolVendor10 => _questBoolVendor10;
  set questBoolVendor10(bool value) {
    _questBoolVendor10 = value;
  }

  bool _categoryHasSelected = false;
  bool get categoryHasSelected => _categoryHasSelected;
  set categoryHasSelected(bool value) {
    _categoryHasSelected = value;
  }

  CategoriaSelezionataStruct _rispostaCategoria = CategoriaSelezionataStruct();
  CategoriaSelezionataStruct get rispostaCategoria => _rispostaCategoria;
  set rispostaCategoria(CategoriaSelezionataStruct value) {
    _rispostaCategoria = value;
  }

  void updateRispostaCategoriaStruct(
      Function(CategoriaSelezionataStruct) updateFn) {
    updateFn(_rispostaCategoria);
  }

  bool _annunciPreferiti = false;
  bool get annunciPreferiti => _annunciPreferiti;
  set annunciPreferiti(bool value) {
    _annunciPreferiti = value;
  }

  bool _profiloPreferito = false;
  bool get profiloPreferito => _profiloPreferito;
  set profiloPreferito(bool value) {
    _profiloPreferito = value;
  }

  QuestVendorWrapperStruct _questVendorStateWrapper =
      QuestVendorWrapperStruct();
  QuestVendorWrapperStruct get questVendorStateWrapper =>
      _questVendorStateWrapper;
  set questVendorStateWrapper(QuestVendorWrapperStruct value) {
    _questVendorStateWrapper = value;
  }

  void updateQuestVendorStateWrapperStruct(
      Function(QuestVendorWrapperStruct) updateFn) {
    updateFn(_questVendorStateWrapper);
  }
}
