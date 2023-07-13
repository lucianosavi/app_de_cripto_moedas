import 'package:app_de_cripto_moedas/repositories/moeda_repositories.dart';
import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = MoedasRepository.tabela;

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
            );
          },
          padding: const EdgeInsets.all(8),
          itemCount: tabela.length,
        ));
  }
}
