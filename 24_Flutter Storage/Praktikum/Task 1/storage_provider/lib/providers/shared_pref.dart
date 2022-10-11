import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage_provider/Models/data_model.dart';

class SharedData {
  Future<DataModel?> getData() async {
    final prefs = await SharedPreferences.getInstance();

    final nama = prefs.getString('nama');
    final email = prefs.getString('email');
    final noHp = prefs.getString('noHp');
    final password = prefs.getString('password');

    if (nama != null && email != null && noHp != null && password != null) {
      return DataModel(nama, email, noHp, password);
    } else {
      return null;
    }
  }

  Future saveData(DataModel data) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('nama', data.nama);
    await prefs.setString('email', data.email);
    await prefs.setString('noHp', data.noHp);
    await prefs.setString('password', data.password);
  }

  Future removeData() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.clear();
  }
}
