import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const TextStyle textStyle = TextStyle( fontSize: 30);

  @override
  Widget build(BuildContext context) {
    int counter = 10;
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Text('Número de Clicks', style: textStyle),
            Text('$counter', style: textStyle),
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_reaction_sharp),
        onPressed: () {
          counter++;
          print("Hola mundo: $counter");
        },
      ),
    );
  }

}
