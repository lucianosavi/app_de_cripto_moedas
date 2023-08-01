import 'dart:math';

import 'package:app_de_cripto_moedas/pages/compra_moeda.dart';
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
  final myController = TextEditingController();

  @override
  void initState() {
    newValue();
    super.initState();
  }

  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  var valorAtual = 0.00;
  var valorCompra = 0.00;
  var quantidadeMoedas = 0;

  newValue() {
    valorAtual = widget.moedas.preco - widget.moedas.profits;
  }

  buyValue() {
    valorCompra = valorAtual * double.parse(myController.text);
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
        child: SingleChildScrollView(
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
              Text('Compre aqui suas moedas'),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quantidade'),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(1)),
                      style: TextStyle(fontSize: 13),
                      maxLines: 1,
                      onChanged: (val) {
                        if (myController.text.isNotEmpty) {
                          buyValue();
                          setState(() {});
                        } else {
                          valorCompra = 0;
                          setState(() {});
                        }
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text(
                    'Valor Final ${real.format(valorCompra)}',
                    maxLines: 1,
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CompraMoedas(),
                        ),
                      );
                    },
                    backgroundColor: Colors.grey,
                    shape: Border(),
                    label: Text('Comprar'),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
