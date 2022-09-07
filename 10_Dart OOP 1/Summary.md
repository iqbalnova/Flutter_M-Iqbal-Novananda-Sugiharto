Nama : M Iqbal Novananda Sugiharto

Kelas : Flutter A

# Apa itu OOP

Pemrograman berorientasi objek merupakan suatu teknik dalam pemrograman yang berdasarkan konsep "objek", dimana objek tersebut dapat berisi data, dalam bentuk variabel atau dikenal juga sebagai atribut, serta fungsi/prosedur atau dikenal juga sebagai method. Bahasa Dart mendukung penuh pemrograman berorientasi objek, hanya didalam pemrograman dart tidak dikenal konsep tipe data primitif (maksud dari primitif adalah bukan objek), pada bahasa pemrograman Dart semua adalah objek.

# Apa itu Kelas (class) ?

Secara singkat class dapat diartikan blueprint dari suatu objek, maksudnya adalah kita mendesain suatu objek berdasarkan class yang kita buat, sebagai contoh dalam dunia nyata, jika kita ingin membuat sebuah objek meja maka kita perlu menggambar rancangan meja tersebut, dengan demikian kita akan mulai membuat meja berdasarkan rancangan tersebut, jika rancangannya baik maka hasilnya baik, begitu juga sebaliknya, jadi class dapat kita analogikan sebagai rancangannya dan hasil dari rancangan tersebut adalah objeknya.array adalah salah satu struktur data yang paling umum dan paling populer yang disediakan oleh bahasa pemrograman. namun dart tidak menyediakan array, namun sebaliknya dart memiliki **list** yang kurang lebih semua sama disediakan oleh array.

#### Mendefenisikan Kelas

Untuk membuat kelas kita gunakan keyword class yang telah disediakan oleh bahasa Dart. Perhatikan contoh berikut:

```
class Dadu {
...your code here
}
```

#### Cara Mengakses Kelas

```
Dadu dd = new Dadu();
```

Diawali dengan nama kelas yaitu Dadu kemudian nama objeknya yaitu dd (kita bisa menentukan nama objek yang lain tidak harus dd) kemudian new diakhiri dengan nama kelas.

# Variabel Instans (attribut)

Jika kita melihat sebuah dadu, tentuk kita akan melihat angka pada sisi-sisnya, angka tersebut adalah bilangan integer (bulat) dari 1 sampai dengan 6, jika kita melemparkannya dimana angka hasil dadu akan disimpan? kemudian berapa kali dadu akan dilemparkan? Perhatikan contoh berikut:

```
class Dadu {
	int sisi;
	int jumlahPutaran;
	List nilai;
}
```

Kelas dadu telah kita tambahkan beberapa atribut, dan kita bisa menggunakannya pada saat objek telah diciptakan, perhatikan contoh berikut:

```
void main() {
	Dadu dd = new Dadu();
	d.sisi = 6;
	d.jumlahPutaran = 2;
	d.nilai = [4, 6];
}
```

Tanda titik "." digunakan untuk mengacu kepada attribut (variabel instans) suatu objek, kita bisa juga memberikan nilai awal pada class sehingga kita tidak perlu mengisinya pada saat objek diciptakan.
