Nama : M Iqbal Novananda Sugiharto

Kelas : Flutter A

# Summary

### 1. Cara menggunakan asset lokal ?

1.  buat folder baru pada root project `assets/images`
2.  Masukan gambar ke dalam folder tersebut
3.  Registrasikan image / gambar yang tadi kita masukan dengan cara edit file **pubspec.yaml**

```
flutter:
  assets:
    - assets/images/
```

#### 2. Gambar dari internet

Menampilkan gambar dari internet lebih mudah dari local asset karena tidak perlu mengatur folder seperti local image. Cukup dengan menggunakan **Image.network** dan masukan url nya maka sudah selesai.

```
Image.network('https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg');
```

#### 3. Manipulasi Warna Gambar

Pada widget Image, kita juga dapat memanipulasi warna gambar dengan properti **colorBlendMode** penggunaan properti ini biasanya digabungkan dengan properti **color**. Contoh kodenya dan hasil tampilannya seperti ini

```

body: Column(children: <Widget>[
 Image.asset('assets/images/paddy-field.jpg'), // tanpa BlendMode
 Image.asset('assets/images/paddy-field.jpg', // dengan BlendMode
     color: Colors.grey,
     colorBlendMode: BlendMode.hue),
]),
```
