// importing dart:io file
import 'dart:io';

void main() {
  print('Masukkan Nilai Dibawah: ');
  int? nilai = int.parse(stdin.readLineSync()!);
  if (nilai > 70)
    print("Nilai Anda A");
  else if (nilai > 40)
    print("Nilai Anda B");
  else if (nilai < 40 && nilai > 0)
    print("Nilai Anda C");
  else
    print("Maaf nilai anda kosong");
}
