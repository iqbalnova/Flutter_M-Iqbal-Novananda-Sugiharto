import 'bangunRuang.dart';

class Kubus extends BangunRuang {
  Kubus(this.sisi) : super(1, 2, 3);
  double sisi;

  @override
  double volume() {
    // TODO: implement volume
    return sisi * sisi * sisi;
  }
}
