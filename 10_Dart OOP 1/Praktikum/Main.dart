import 'Hewan.dart';
import 'Mobil.dart';

void main(List<String> args) {
  Hewan hewan = Hewan();
  Mobil mobil = Mobil();
  // var name = hewan.nama =
  print(hewan.beratHewan);
  mobil.tambahMuatan(9);
  print(mobil.tambahMuatan(2));
  print(mobil.muatan);
  print(mobil.totalMuatan());
}
