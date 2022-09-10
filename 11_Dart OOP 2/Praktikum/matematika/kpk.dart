import 'matematika.dart';

class Kpk implements Matematika {
  double? a, b, c, d;
  double bil1, bil2;

  Kpk(this.bil1, this.bil2) {
    c = bil1 * bil2;
    for (double i = 1; i <= c!; i++) {
      a = i % bil1;
      b = i % bil2;
      if (a == 0 && b == 0) {
        d = i;
        break;
      }
    }
  }

  @override
  double? hasil() {
    // TODO: implement hasil
    return d;
  }
}
