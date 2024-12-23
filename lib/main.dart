import 'package:flutter/material.dart';
import 'package:visitorsbce/pages/menu.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(" SBCE VISITOR LOG ",
              style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          backgroundColor: Colors.green[900],
          foregroundColor: Colors.white,
        ),
        body: const MenuSystem(),
      ),
    );
  }
}