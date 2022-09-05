Nama : M Iqbal Novananda Sugiharto

Kelas : Flutter A

# Cara mnggunakan MAP

**_Map_** adalah kumpulan pasangan _Key – Value_ yang tidak berurutan, tetapi key – values yang saling berkaitan. Setiap _value_ memiliki _key_ yang artinya setiap _key_ haruslah unik, namun _value_ yang sama **dapat digunakan berkali-kali**. Dua item dengan _value_ yang sama akan tetap unik melalui _key_ secara terpisah.

```
void main() {

  var ibuKota = {
    'Indonesia' : 'Jakarta',
    'England' : 'London',
    'China' : 'Beijing',
    'Germany' : 'Berlin',
  };


  print(ibuKota);
}

//Output
{Indonesia: Jakarta, England: London, China: Beijing, Germany: Berlin}
```

Potongan _source code map_ di atas memiliki pengertiannya adalah kita membuat sebuah variabel **ibuKota**. Di dalam variabel **ibuKota** terdapat 4 pasang _key – values_ dan ketika kita cetak dengan menggunakan statement _print_ output yang ditampilkan akan sama persis seperti yang telah dideklarasikan, antara tanda kurung kurawal ( **{}** ) dengan setiap pasangan _key – values_ di pisahkan dengan tanda koma ( **,** ) dan juga pada setiap _key_ dan _value_ dipisahkan oleh titik dua ( **:** ).

# Penggunaan List pada dart

array adalah salah satu struktur data yang paling umum dan paling populer yang disediakan oleh bahasa pemrograman. namun dart tidak menyediakan array, namun sebaliknya dart memiliki **list** yang kurang lebih semua sama disediakan oleh array.

**List** jika pada bahasa pemrograman lain disebut array, jadi dalam pemrograman dart _list_ itu merupakan kumpulan untuk menyimpan lebih dari satu nilai atau banyak nilai dalam _variable._ Artinya setiap elemen yang di dalam _list_ memiliki posisi tetap, yang dimana saat kita gunakan _list_ tersebut dengan mengakses objek menurut indeks-nya.

```
void main()  {
	var simpleList = [1,2,3,4,5];
	print(simpleList);
}
//Output
[1, 2, 3, 4, 5]
```

Pada baris 2 dari potongan _source code_ diatas, kita telah mendeklarasikan dan menginisialisasi _list_ dengan 5 elemen. Sehingga ketika kita memberikan statement _print_ maka _list_ secara lengkap akan tampil berikut dengan tanda kurung sikunya.

# Function dan penggunaannya

Functions Dart ibarat sebagai warga negara kelas satu. Fungsi dapat ditetapkan ke variabel, diteruskan sebagai argumen ke fungsi atau dikembalikan dari fungsi. Ini membuat bahasa lebih fleksibel.

Tubuh fungsi terdiri dari pernyataan-pernyataan yang dieksekusi ketika fungsi dipanggil. Kami menggunakan kata kunci return untuk mengembalikan nilai dari fungsi. Badan dibatasi dengan sepasang tanda kurung kurawal {}. Untuk memanggil suatu fungsi, kita tentukan namanya diikuti dengan tanda kurung bulat (). Suatu fungsi mungkin atau mungkin tidak mengambil parameter.

```
void  main()  {
	print(test());
}

String test()  {
	// mendefinisikan function
	return  "function sedang berjalan";
}
```

Function diatas dapat mengembalikan suatu nilai ketika dipanggil
