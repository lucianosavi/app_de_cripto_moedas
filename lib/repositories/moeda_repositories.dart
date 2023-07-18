import 'package:app_de_cripto_moedas/models/moeda.dart';

class MoedasRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'images/bitcoin.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 148802.61,
        grafico: 'images/bitcoin grafico.png',
        profits: 8.15),
    Moeda(
        icone: 'images/eth.png',
        nome: 'Etherium',
        sigla: 'ETH',
        preco: 1873.61,
        grafico: 'images/eth grafico.png',
        profits: 5.15),
    Moeda(
        icone: 'images/dogcoin.png',
        nome: 'DogCoin',
        sigla: 'DGN',
        preco: 0.314,
        grafico: 'images/dogecoin grafico.png',
        profits: 9.15),
    Moeda(
        icone: 'images/bnb.png',
        nome: 'BNB',
        sigla: 'BNB',
        preco: 1208.77,
        grafico: 'images/grafico BNB.png',
        profits: 2.15),
    Moeda(
        icone: 'images/xrp.png',
        nome: 'XRP',
        sigla: 'XRP',
        preco: 2.0,
        grafico: 'images/xrp grafico.png',
        profits: 0.15),
  ];
}
