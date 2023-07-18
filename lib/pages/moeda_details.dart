import 'package:flutter/material.dart';
import '../models/moeda.dart';
import 'package:intl/intl.dart';
import 'moedas_pages.dart';

class MoedasDetails extends StatefulWidget {
  Moeda moedas;

  MoedasDetails({Key? key, required this.moedas}) : super(key: key);

  @override
  State<MoedasDetails> createState() => _MoedasDetailsState();
}

class _MoedasDetailsState extends State<MoedasDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newValue();
  }

  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  var valorAtual = 0.00;

  newValue() {
    valorAtual = widget.moedas.preco - widget.moedas.profits;
  }

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: Image.asset(widget.moedas.icone),
                  ),
                  Container(width: 100),
                  Text(
                    widget.moedas.sigla,
                    style: TextStyle(fontSize: 50),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Valor Antigo:'),
                Text(
                  real.format(widget.moedas.preco),
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                      color: Colors.grey),
                ),
                Text('Valor Atual'),
                Text(
                  real.format(valorAtual),
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                      color: Colors.grey),
                ),
              ],
            ),
            Image.asset(widget.moedas.grafico),
          ],
        ),
      ),
    );
  }
}
