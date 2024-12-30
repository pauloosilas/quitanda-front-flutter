import 'package:flutter/material.dart';
import 'package:quitanda/src/auth/sign_in_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       // useMaterial3: true,
        colorSchemeSeed: Colors.green,
       // primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const SignInScreen()
    );
  }
}