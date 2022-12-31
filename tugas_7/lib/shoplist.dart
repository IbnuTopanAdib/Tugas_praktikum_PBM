class ShopList {
  late int? id;
  late String barang;
  late String komen;
  late String tgl;
  late double budget;

  ShopList({
    this.id,
    required this.barang,
    required this.komen,
    required this.tgl,
    required this.budget,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'barang': barang,
      'komen': komen,
      'tgl': tgl,
      'budget': budget,
    };
  }

  ShopList.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    barang = map['barang'];
    komen = map['komen'];
    tgl = map['tgl'];
    budget = map['budget'];
  }
}
