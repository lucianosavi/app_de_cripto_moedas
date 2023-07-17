import 'package:app_de_cripto_moedas/pages/moeda_details.dart';
import 'package:app_de_cripto_moedas/repositories/moeda_repositories.dart';
import 'package:flutter/material.dart';
import '../models/moeda.dart';

class MoedasPage extends StatefulWidget {
  MoedasPage({super.key});

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  final tabela = MoedasRepository.tabela;
  @override
  void initState() {
    super.initState();
  }

  mostrarDetalhes(Moeda moeda) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MoedasDetails(moedas: moeda),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cripto Moedas'),
        ),
        body: ListView.builder(
          itemBuilder: (
            BuildContext context,
            int moeda,
          ) {
            return ListTile(
              leading: Image.asset(
                tabela[moeda].icone,
                width: 88,
              ),
              title: Text(tabela[moeda].nome + tabela[moeda].sigla),
              trailing: Text(tabela[moeda].preco.toString()),
              onTap: () => mostrarDetalhes(tabela[moeda]),
            );
          },
          padding: const EdgeInsets.all(8),
          itemCount: tabela.length,
        ));
  }
}
