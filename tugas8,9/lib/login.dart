import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:loginflora/screen.dart';
import 'package:loginflora/showpass.dart';
import 'package:provider/provider.dart';

class LoginFlora extends StatefulWidget {
  const LoginFlora({super.key, required String title});

  @override
  State<LoginFlora> createState() => _LoginFloraState();
}

class _LoginFloraState extends State<LoginFlora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/ts.png"), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue.withOpacity(0.2),
            Colors.purple.withOpacity(0.6)
          ], stops: const [
            0.0,
            1
          ], begin: Alignment.topCenter)),
          child: Center(
            child: GlassmorphicContainer(
              width: 250,
              height: 280,
              borderRadius: 20,
              blur: 20,
              alignment: Alignment.bottomCenter,
              border: 2,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.1),
                    const Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                  stops: const [
                    0.1,
                    1,
                  ]),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFffffff).withOpacity(0.5),
                  const Color((0xFFFFFFFF)).withOpacity(0.5),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    Text(
                      'HALAMAN LOGIN',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple.withOpacity(0.5)),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukan Username",
                            prefixIcon: Icon(Icons.person)),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: TextField(
                        obscureText: context.watch<ShowpassProvider>().showPass,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukan Password",
                            prefixIcon: const Icon(
                              Icons.lock,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                context.read<ShowpassProvider>().showhide();
                              },
                              icon: context
                                          .watch<ShowpassProvider>()
                                          .showPass ==
                                      true
                                  ? const Icon(Icons.remove_red_eye)
                                  : const Icon(Icons.remove_red_eye_outlined),
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red.withOpacity(0.5)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen(),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showNotification(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.orange.shade900,
        content: Text(message.toString())));
  }
}
