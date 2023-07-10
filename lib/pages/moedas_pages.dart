import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cripto Moedas'),
      ),
      body: Center(
        child: FloatingActionButton(
          backgroundColor: Colors.cyanAccent,
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
