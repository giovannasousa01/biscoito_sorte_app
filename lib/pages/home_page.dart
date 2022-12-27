import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listaFrases = [
    "A vida trará coisas boas se tiver paciência.",
    "Demonstre amor e alegria em todas as oportunidades e verá que a paz nasce dentro de si.",
    "Não compense na ira o que lhe falta na razão.",
    "Defeitos e virtudes são apenas dois lados da mesma moeda.",
    "A maior de todas as torres começa no solo.",
    "Não há que ser forte. Há que ser flexível.",
    "Todos os dias organiza os seus cabelos, por que não faz o mesmo com o coração?",
    "Há três coisas que jamais voltam; a flecha lançada, a palavra dita e a oportunidade perdida.",
    "A juventude não é uma época da vida, é um estado de espírito.",
    "Podemos escolher o que semear, mas somos obrigados a colher o que plantamos.",
    "Dê toda a atenção á formação dos seus filhos, sobretudo com bons exemplos da sua própria vida.",
    "Siga os bons e aprenda com eles.",
    "Não importa o tamanho da montanha, ela não pode tapar o sol.",
    "O bom-senso vale mais do que muito conhecimento.",
    "Quem quer colher rosas tem de estar preparado para suportar os espinhos.",
    "São os nossos amigos que nos ensinam as mais valiosas lições.",
    "Aquele que se importa com o sentimento dos outros, não é um tolo.",
    "A adversidade é um espelho que reflete o verdadeiro eu.",
    "Lamentar aquilo que não temos é desperdiçar aquilo que já possuímos.",
    "Uma bela flor é incompleta sem as suas folhas.",
    "Sem o fogo do entusiasmo, não há o calor da vitória.",
    "O riso é a menor distância entre duas pessoas.",
    "Os defeitos são mais fortes quando o amor é fraco.",
    "Amizade e Amor são coisas que se unem num piscar de olhos.",
    "Surpreender e ser surpreendido é o segredo do amor.",
  ];

  var imgBiscoito = 'assets/images/fortune_cookie.png';

  var fraseDaSorte = 'Clique no botão para quebrar o biscoito';

  void quebrarBiscoito() {
    var num = Random().nextInt(listaFrases.length);

    setState(() {
      fraseDaSorte = listaFrases[num];
      imgBiscoito = 'assets/images/cracked_fortune_cookie.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Biscoito da sorte',
          style: TextStyle(color: Colors.amber[800], fontFamily: 'Montserrat'),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              child: Image.asset(
                imgBiscoito,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 100.0, right: 100.0, bottom: 50.0),
              child: Text(
                fraseDaSorte,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.amber[800],
                    fontSize: 20,
                    fontFamily: 'Montserrat'),
              ),
            ),
            ElevatedButton(
              onPressed: () => quebrarBiscoito(),
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              child: const Text(
                'Quebrar Biscoito',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
