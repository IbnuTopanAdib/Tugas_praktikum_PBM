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
  double angka = 0;

  void tombolTekan() {
    setState(() {
      angka += 1;
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
                style: TextStyle(fontFamily: "Fridays", color: Colors.black),
              )),
            ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                    Colors.yellow,
                    Colors.blue,
                  ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    angka.toString(),
                    style: TextStyle(fontSize: 12 + angka),
                  ),
                  ElevatedButton(
                    onPressed: tombolTekan,
                    child: const Text('tambah angka',
                        style: TextStyle(fontFamily: "Fridays")),
                  )
                ],
              ),
            )));
  }
}
