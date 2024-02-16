import 'package:flutter/material.dart';
import 'package:project/cat_card.dart';
import 'package:project/main.dart';

class Cats_home_page extends StatelessWidget {
  const Cats_home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: const Icon(Icons.home, color: Colors.white),
          title: const Center(
              child: Text("My Cats", style: TextStyle(color: Colors.white))),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: Colors.red),
            ),
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: cats.length,
            itemBuilder: (context, index) {
              final cat = cats[index];
              return Cat_card(
                cat: cat,
              );
            }),
      ),
    );
  }
}
