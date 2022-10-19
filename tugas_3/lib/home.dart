import 'package:flora/user.dart';
import 'package:flutter/material.dart';

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Say It With Flowers!',
            style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: 10),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UserPage()));
              },
              icon: const Icon(Icons.person, color: Colors.black))
        ],
      ),
      body: ListView(children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 225, 231, 235),
              borderRadius: BorderRadius.circular(8)),
          child: const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: InputBorder.none),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 5),
          child: Text(
            'Popular',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image.asset(
                        "img/vivid2.jpg",
                        fit: BoxFit.cover,
                        width: 300,
                        height: 250,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: const Text('Vivid Bouquet',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white))))
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image.asset(
                        "img/ongiement.jpg",
                        fit: BoxFit.cover,
                        width: 300,
                        height: 250,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: const Text('Ongie Ment',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white))))
                  ],
                ),
              ],
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: Text(
              'Occasion',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 6, 70, 56),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "img/birthday.png",
                      width: 40,
                      height: 40,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 183, 54, 29),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "img/baby.png",
                      width: 40,
                      height: 40,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "img/love.png",
                      width: 40,
                      height: 40,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 6, 70, 56),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "img/ring.png",
                      width: 40,
                      height: 40,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 183, 54, 29),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "img/suitcase.png",
                      width: 40,
                      height: 40,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(
                      "img/toga.png",
                      width: 40,
                      height: 40,
                    )),
              ],
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: Text(
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image.asset(
                        "img/bouquet.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 250,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                            width: 450,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: const Text(
                              'Bouquet',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            )))
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image.asset(
                        "img/boxed.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 250,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                            width: 450,
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: const Text('Boxed Flower',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white))))
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
