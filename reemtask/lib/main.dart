import 'package:flutter/material.dart';
import 'package:reemtask/pages/home.dart';
import 'package:reemtask/pages/items_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        ItemsDetails.routeName: (context) => const ItemsDetails(),
      },
    );
  }
}
