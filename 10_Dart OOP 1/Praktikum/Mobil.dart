import 'hewan.dart';

class Mobil {
  Mobil(this.maxMuatan);
  int maxMuatan;
  List<Hewan> muatan = [];
  double total = 0;

  double totalMuatan() {
    for (final element in muatan) {
      total += element.beratHewan;
    }
    return total;
  }

  void tambahMuatan(Hewan hewan) {
    if (hewan.beratHewan < maxMuatan) {
      muatan.add(hewan);
    } else {
      print('Maaf kapasitas sudah penuh!');
    }
  }
}
