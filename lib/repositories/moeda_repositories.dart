import 'package:app_de_cripto_moedas/models/moeda.dart';

class MoedasRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'images/bitcoin.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 148802.61,
        grafico: 'images/bitcoin grafico.png'),
    Moeda(
        icone: 'images/eth.png',
        nome: 'Etherium',
        sigla: 'ETH',
        preco: 1873.61,
        grafico: 'images/eth grafico.png'),
    Moeda(
        icone: 'images/dogcoin.png',
        nome: 'DogCoin',
        sigla: 'DGN',
        preco: 0.314,
        grafico: 'images/dogecoin grafico.png'),
    Moeda(
        icone: 'images/bnb.png',
        nome: 'BNB',
        sigla: 'BNB',
        preco: 1208.77,
        grafico: 'images/grafico BNB.png'),
    Moeda(
        icone: 'images/xrp.png',
        nome: 'XRP',
        sigla: 'XRP',
        preco: 2.0,
        grafico: 'images/xrp grafico.png'),
  ];
}
