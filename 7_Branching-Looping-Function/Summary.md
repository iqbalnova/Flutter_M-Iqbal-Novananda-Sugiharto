Nama : M Iqbal Novananda Sugiharto

Kelas : Flutter A

# Penggunaan For untuk melakukan iterasi

```
void main(List<String> arguments) {
  //membuat variabel hobbies
  var hobbies = ['Renang', 'Futsal', 'Ngegame', 'Tidur'];
  for(var i =0; i < hobbies.length; i ++){
    print(hobbies[i]);
  }
}
//Output
Renang
Futsal
Ngegame
Tidur
```

Pada contoh di atas terdapat variabel hobbies berupa [List](https://belajarflutter.com/dart-list-pada-pemrograman-dart/) lalu untuk menampilkan hobbiesini kita menggunakan properti _**length**_. Iterator akan menghentikan pengulangan dari length yang terdapat di daftar tersebut. Ini karena indeks terakhir dari sebuah daftar kurang dari _length_ -nya karena indeks di mulai dengan angka 0 dan length di mulai dari 1. Ini lah sebabnya kita menulis i < hobbies.length daripada menggunakan <= hobbies.length.

# Penggunaan If Else

```
import  'dart:io';

void  main() {
print('Masukkan Nilai Dibawah: ');
int? nilai =  int.parse(stdin.readLineSync()!);
if (nilai >  70)
print("Nilai Anda A");
else  if (nilai >  40)
print("Nilai Anda B");
else  if (nilai <  40  && nilai >  0)
print("Nilai Anda C");
else
print("Maaf nilai anda kosong");
}
```

Pada kode diatas penggunaan peengkondisian if else untuk mengecek suatu nilai Huruf berdasarkan nilai angka.
Jika nilai lebih dari 70 maka akan muncul "Nilai Anda A", jika inputan lebih dari 40 maka muncul "Nilai Anda B", jika nilai leebih dari 0 dan kurang dari 40 maka muncul "Nilai Anda C", serta jika useer input selain pengkondisian diatas maka muncul "Maaf nilai anda kosong".

# Penggunaan while untuk mencari faktorisasi

```
import  'dart:io';

void  main(List<String> args) {
	print('Masukkan Nilai Faktorial Dibawah: ');
	var nilai =  BigInt.parse(stdin.readLineSync()!);
	var angka =  BigInt.from(1);
	var faktor =  BigInt.from(1);

	while (angka <= nilai) {
	faktor = faktor * angka;
	angka = angka +  BigInt.from(1);
	}

	print('Faktorialnya adalah : $faktor');
}
```

Saya menggunakan BigInt karena jika user menginput faktorial dari 30 maka akan terdapat banyak jumlah karakter angka yang dimunculkan jadi ketika meenggunakan int tidak akan memenuhi kebutuhan byte yang digunakan.
