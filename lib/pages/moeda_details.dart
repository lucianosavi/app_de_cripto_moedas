import 'package:flutter/material.dart';
import '../models/moeda.dart';
import 'package:intl/intl.dart';

class MoedasDetails extends StatefulWidget {
  Moeda moedas;

  MoedasDetails({Key? key, required this.moedas}) : super(key: key);

  @override
  State<MoedasDetails> createState() => _MoedasDetailsState();
}

class _MoedasDetailsState extends State<MoedasDetails> {
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.moedas.nome),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    child: Image.asset(widget.moedas.icone),
                  ),
                  Container(width: 10),
                  Text(
                    real.format(widget.moedas.preco),
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -1,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
