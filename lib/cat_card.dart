import 'package:flutter/material.dart';
import 'package:project/cat_details_page.dart';
import 'package:project/data.dart';

class Cat_card extends StatelessWidget {
  final Cats cat;
  const Cat_card({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Cat_details_page(cat: cat);
        }));
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(cat.imageLink,
                  width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                cat.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
