import 'matematika.dart';

class Fpb implements Matematika {
  double bil1, bil2;
  double x = 0;
  Fpb(this.bil1, this.bil2) {}

  @override
  double? hasil() {
    while (bil2 != 0) {
      x = bil1 % bil2;
      bil1 = bil2;
      bil2 = x;
    }
    // TODO: implement hasil
    return bil1;
  }
}
