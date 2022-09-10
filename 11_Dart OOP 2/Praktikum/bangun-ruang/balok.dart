import 'bangunRuang.dart';

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);

  @override
  double? volume() {
    // TODO: implement volume
    return panjang! * lebar! * tinggi!;
  }
}
