void main(List<String> args) {
  //variabel
  var ibnu = "topan";
  print(ibnu);
  //variabel int
  int i = 5;
  print(i);
  //variabel double
  double b = 5.5;
  print(b);
  //variabel boolean
  bool isgood = false;
  print(isgood);
  //variabel string
  String name = "Ibnu Topan";
  print(name);
  //awalan cost nilainya tidak bisa dirubah dan variablenya tidak bisa dideklarasikan ulang
  const array1 = [1, 2, 3];
  print(array1);
  //awalan final nilainya bisa dirubah tetapi variablenya tidak bisa dideklarasikan ulang
  final array2 = [
    "manggal",
    "apel",
    "melon",
  ];
  array2[0] = "jeruk";
  print(array2);
  //awalan dynamic bisa digunakan untuk menyimpan semua tipe data
  dynamic d = "string";
  dynamic y = 1;
  dynamic n = 5.5;
  dynamic a = false;
}
