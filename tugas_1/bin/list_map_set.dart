void main(List<String> args) {
  //list
  List<String> honda = ["supra", "beat", "vario"];
  print(honda);
  honda.add("revo");
  print(honda);
  honda.remove("revo");
  print(honda);
  print(honda[0]);

  //set
  Set<int> angka = {1, 1, 1};
  print(angka);
  angka.add(2);
  print(angka);
  angka.remove(2);
  print(angka);

  //map
  Map<int, String> makanan = {1: "nasi", 2: "telor", 3: "sayur"};

  print(makanan);

  makanan[1] = "roti";
  print(makanan);

  makanan.remove(2);
  print(makanan);
}
