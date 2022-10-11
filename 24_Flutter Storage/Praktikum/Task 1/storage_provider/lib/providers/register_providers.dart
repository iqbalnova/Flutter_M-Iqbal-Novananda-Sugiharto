import 'package:flutter/material.dart';
import 'package:storage_provider/Models/data_model.dart';
import 'package:storage_provider/providers/shared_pref.dart';

class RegisterProvider extends ChangeNotifier {
  late SharedData _shared;
  DataModel? _data;

  RegisterProvider() {
    _shared = SharedData();
  }

  DataModel? get data => _data;

  Future getDataModel() async {
    _data = await _shared.getData();
    notifyListeners();
  }

  Future addData(DataModel value) async {
    return await _shared.saveData(value);
  }

  Future deleteData() async {
    return await _shared.removeData();
  }
}
