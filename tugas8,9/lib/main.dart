import 'package:flutter/material.dart';
import 'package:loginflora/login.dart';
import 'package:loginflora/showpass.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ShowpassProvider(),
        child: const LoginFlora(
          title: 'Login',
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
