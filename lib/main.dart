import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: _TempHomeScreen(),
    );
  }
}

class _TempHomeScreen extends StatelessWidget {
  const _TempHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Holamundo"),
        Text("Holamundo"),
    ],);
  }
}