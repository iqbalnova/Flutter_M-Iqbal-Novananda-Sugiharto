void main(List<String> args) {
  List<int> value = [1, 2, 3, 4, 5];
  print('Nilai awal $value');
  hitung(value, 3);
}

Future<List<int>> hitung(List<int> val, int multiplier) async {
  return await Future.delayed(Duration(seconds: 4), () {
    List<int> myList = [];
    for (var a in val) {
      myList.add(a * multiplier);
    }
    return myList;
  });
}
