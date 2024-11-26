
import 'package:flutter/material.dart';
import 'model.dart';

class TheViewModel extends ChangeNotifier{

  final TheModel _theModel;

  TheViewModel() : _theModel = TheModel();

  int get counter => _theModel.counter;

  void initFirestore() {
    _theModel.initFirestore();
    notifyListeners();
  }

  void fetchFirestore() {
    _theModel.fetchData();
    notifyListeners();
  }

}