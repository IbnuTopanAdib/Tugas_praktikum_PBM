import 'package:flutter/material.dart';

import 'detail2.dart';
import 'model.dart';

class FloraHome extends StatelessWidget {
  const FloraHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: listBouquet.length,
              itemBuilder: (BuildContext context, int index) {
                final item = listBouquet[index];
                return SizedBox(
                    height: 200,
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Detail(bouquet: item),
                                          ));
                                    },
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(item.foto),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.nama,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 20),
                                        Text(
                                            "${item.jumlah_bunga} Premium Flowers"),
                                        const SizedBox(height: 20),
                                        Text("\$${item.harga}"),
                                        const SizedBox(height: 20),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white10,
                                                        border: Border.all(
                                                          color: Colors.amber,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 7,
                                                        vertical: 3),
                                                    child: const Icon(
                                                        Icons.favorite_border,
                                                        size: 20,
                                                        color: Colors.amber)),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8,
                                                        vertical: 4),
                                                    child: const Icon(
                                                      Icons
                                                          .shopping_cart_rounded,
                                                      size: 18,
                                                      color: Colors.white,
                                                    )),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
        ));
  }
}
