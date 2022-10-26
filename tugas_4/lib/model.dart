class Bouquet {
  final String nama, foto;
  final int jumlah_bunga;
  final double harga;
  final int terjual;
  final int love;

  const Bouquet(
      {required this.nama,
      required this.jumlah_bunga,
      required this.harga,
      required this.foto,
      required this.terjual,
      required this.love});
}

const List<Bouquet> listBouquet = [
  Bouquet(
      nama: "Vivid",
      jumlah_bunga: 12,
      harga: 10,
      foto: "img/vivid.jpg",
      terjual: 5000,
      love: 1000),
  Bouquet(
      nama: "Sun F",
      jumlah_bunga: 14,
      harga: 10,
      foto: "img/sun2.jpg",
      terjual: 10000,
      love: 5000),
  Bouquet(
      nama: "Roses",
      jumlah_bunga: 50,
      harga: 50,
      foto: "img/roses.jpg",
      terjual: 10000,
      love: 1305),
  Bouquet(
      nama: "Shinobu",
      jumlah_bunga: 12,
      harga: 7,
      foto: "img/bouquet.jpg",
      terjual: 30,
      love: 225),
  Bouquet(
      nama: "Tulip",
      jumlah_bunga: 12,
      harga: 7.0,
      foto: "img/tulip1.jpg",
      terjual: 25,
      love: 5),
];
