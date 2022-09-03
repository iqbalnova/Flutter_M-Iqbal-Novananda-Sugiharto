void main(List<String> args) {
  var value = [1, 2, 3, 4, 5];
  print('Nilai awal $value');
  Hitung(value, 3);
}

Future<void> Hitung(List val, int multiplier) async {
  await Future.delayed(Duration(seconds: 4), () {
    List<int> list = [];
    for (var a in val) {
      list.add(a * multiplier);
    }
    print('hasil multiplier $list');
  });
}
