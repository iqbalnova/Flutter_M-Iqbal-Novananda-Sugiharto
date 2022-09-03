void main(List<String> args) {
  List myList = [
    ['No 1', 'Iqbal'],
    ['No 2', 'Daniel'],
    ['No 3', 'Alvian']
  ];
  print('Data awal $myList');
  var hasil = {for (var a in myList) a[0]: a[1]};
  print('Hasil : $hasil');
}
