import 'bangun-ruang/balok.dart';
import 'bangun-ruang/kubus.dart';
import 'matematika/fpb.dart';
import 'matematika/kpk.dart';

void main(List<String> args) {
  Kubus soal1 = Kubus(2);
  Balok soal2 = Balok(2, 3, 5);
  Kpk soal3 = Kpk(20, 64);
  Fpb soal4 = Fpb(14, 22);

  print('Hasil volume Kubus : ${soal1.volume()}');
  print('Hasil volume Balok : ${soal2.volume()}');
  print('Hasil KPK : ${soal3.hasil()}');
  print('Hasil FPB : ${soal4.hasil()}');
}
