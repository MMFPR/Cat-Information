import 'package:flutter/material.dart';
import 'package:project/data.dart';

class Cat_details_page extends StatelessWidget {
  final Cats cat;
  const Cat_details_page({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined, color: Colors.white),
          ),
          title: Center(
            child: Text(
              cat.name,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: Colors.red),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Cat_details_widget(cat: cat),
        ),
      ),
    );
  }
}

var my_style_text = const TextStyle(fontSize: 18);

class Cat_details_widget extends StatefulWidget {
  final Cats cat;

  const Cat_details_widget({super.key, required this.cat});

  @override
  State<Cat_details_widget> createState() => _Cat_details_widgetState();
}

class _Cat_details_widgetState extends State<Cat_details_widget> {
  bool isNameColored = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(widget.cat.imageLink),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 30,
                )),
          ],
        ),
        Text(
          widget.cat.name,
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: isNameColored ? Colors.deepPurple : Colors.black),
        ),
        Text("Origin : ${widget.cat.origin}", style: my_style_text),
        Text("Max Weight : ${widget.cat.maxWeight}", style: my_style_text),
        Text("Min weight : ${widget.cat.minWeight}", style: my_style_text),
        Text("Length : ${widget.cat.length}", style: my_style_text),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isNameColored = !isNameColored;
                });
              },
              child: const Text("Change Name Color")),
        ),
      ],
    );
  }
}
