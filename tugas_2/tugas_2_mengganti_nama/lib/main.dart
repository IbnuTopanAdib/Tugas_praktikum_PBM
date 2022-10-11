import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiIbnu());
}

class AplikasiIbnu extends StatefulWidget {
  const AplikasiIbnu({super.key});

  @override
  State<AplikasiIbnu> createState() => _AplikasiIbnuState();
}

class _AplikasiIbnuState extends State<AplikasiIbnu> {
  // ignore: non_constant_identifier_names
  String nama_asli = "Ibnu Topan";

  // ignore: non_constant_identifier_names
  String nama_alias = "Topan Adib";

  bool keliatan = true;

  void tombolTekan() {
    setState(() {
      if (keliatan) {
        keliatan = false;
      } else {
        keliatan = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.yellow)),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Center(
                  child: Text(
                'AplikasinyaIbnu',
                style: TextStyle(color: Colors.black),
              )),
            ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                    Colors.blue,
                    Colors.yellow,
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  keliatan == true
                      ? Text(
                          nama_asli,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      : Text(nama_alias,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                  ElevatedButton(
                    onPressed: tombolTekan,
                    child: const Text('Rubah Nama',
                        style: TextStyle(color: Colors.black, fontSize: 24)),
                  )
                ],
              ),
            )));
  }
}
