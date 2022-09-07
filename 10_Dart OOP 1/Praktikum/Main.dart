import 'hewan.dart';
import 'mobil.dart';

void main(List<String> args) {
  Mobil mobil = Mobil(100);
  Hewan kucing = Hewan(5);
  Hewan gajah = Hewan(50);
  Hewan dinosaurus = Hewan(120);

  mobil.tambahMuatan(dinosaurus);
  mobil.tambahMuatan(kucing);
  mobil.tambahMuatan(gajah);

  print('Maksimal kapasitas Mobil : ${mobil.maxMuatan} kg');
  print('Total muatan hewan : ${mobil.totalMuatan()} kg');
}
