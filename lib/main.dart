import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/screens/basic_design.dart';
import 'package:flutter_designs/screens/home_screen.dart';
import 'package:flutter_designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
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
      ],
    );
  }
}
