import 'Hewan.dart';

class Mobil {
  Hewan hewan = Hewan();
  final int maxMuatan = 100;
  List muatan = [];
  int total = 0;

  int totalMuatan() {
    for (int element in muatan) {
      total += element;
    }
    return total;
  }

  List tambahMuatan(int val) {
    muatan.add(hewan.beratHewan = val);
    return muatan;
  }
}
