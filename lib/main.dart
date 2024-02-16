import 'package:flutter/material.dart';
import 'package:project/cats_home_page.dart';
import 'package:project/data.dart';
import 'package:project/data_var.dart';

final cats =
    data_cats.map<Cats>((jsonCats) => Cats.fromJson(jsonCats)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cats_home_page(),
    );
  }
}
