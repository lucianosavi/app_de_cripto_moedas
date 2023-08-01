import 'package:flutter/material.dart';

class CompraMoedas extends StatelessWidget {
  const CompraMoedas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compras'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: TextField(
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
        padding: EdgeInsets.all(8.0),
        itemCount: 1,
      ),
      backgroundColor: Colors.grey,
    );
  }
}
