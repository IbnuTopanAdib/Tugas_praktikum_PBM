import 'package:flutter/material.dart';

import 'model.dart';

class Detail extends StatelessWidget {
  final Bouquet bouquet;
  const Detail({super.key, required this.bouquet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Image.asset(
              bouquet.foto,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.amber,
                    ),
                  )),
            )
          ],
        ),
        const SizedBox(height: 10),
        Container(
          color: Colors.white,
          height: 250,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 9),
                          child: Text(
                            "Terjual ${bouquet.terjual}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 9),
                          child: Row(
                            children: [
                              Text("${bouquet.love}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                              const Icon(
                                Icons.favorite,
                                size: 16,
                                color: Colors.red,
                              )
                            ],
                          )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    bouquet.nama,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$${bouquet.harga}',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "${bouquet.jumlah_bunga} premium Flowers wrapped with quality materials suitable for all situations",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                border: Border.all(
                                  color: Colors.amber,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9, vertical: 4),
                            child: const Center(child: Text('Buy'))),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            children: const [
                              Icon(Icons.add),
                              Center(child: Text("Keranjang"))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
