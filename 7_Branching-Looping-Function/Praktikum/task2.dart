import 'dart:io';

void main(List<String> args) {
  print('Masukkan Nilai Faktorial Dibawah: ');
  var nilai = BigInt.parse(stdin.readLineSync()!);
  var angka = BigInt.from(1);
  var faktor = BigInt.from(1);
  while (angka <= nilai) {
    faktor = faktor * angka;
    angka = angka + BigInt.from(1);
  }
  print('Faktorialnya adalah : $faktor');
}
