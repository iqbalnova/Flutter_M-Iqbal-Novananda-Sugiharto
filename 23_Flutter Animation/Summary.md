Nama : M Iqbal Novananda Sugiharto

Kelas : Flutter A

# Summary

#### Flutter Animation

Bloc dikembangkan dengan berdasarkan

- **Animated Container** : merupakan salah satu widget yang masuk kedalam tipe implicit animation. Selain animasi bar chart diatas masih banyak lagi animasi yang bisa kita buat.

```
AnimatedContainer(
	duration: Duration(milliseconds: 500),
	width: isChanged ? 300 : 100,
	height: 100,
	color: Colors._blue_,
),
```

- **Page Transition**: Untuk transisi khusus antar layar dapat membuat aplikasi menjadi lebih unik. Animasi ini dapat digunakan dengan objek Tween dan Curve untuk menyesuaikan animasi transisi.

```
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
```

- **Animation Height** : digunakan untuk melakukan transisi jika ada perubahan suatu ukuran objek.

```
AnimatedContainer(
	duration: Duration(milliseconds: 500),
	width: isChanged ? 300 : 100,
	height: isChanged ? 300 : 100**,
	color: Colors._blue_,
)
```
