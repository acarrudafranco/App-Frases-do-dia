

import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Levanta, sacode a poeira e dá a volta por cima. - Paulo Vanzolini",
    'Nem todos os dias são bons, mas há algo bom em cada dia. - Desconhecido',
    "Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo. - Martin Luther King",
    "Toda manhã você tem duas escolhas: continuar dormindo com seus sonhos ou acordar e persegui-los! - Desconhecido",
    "A cada novo dia, a cada momento, temos a nossa disposição a maravilhosa possibilidade do encontro, que traz em si infinitas oportunidades. Precisamos apenas estar atentos. - Paulo Coelho"
    "O otimismo é a fé em ação. Nada se pode levar a efeito sem otimismo. - Helen Keller"
    "A sua irritação não solucionará problema algum. O seu mau humor não modifica a vida. Não estrague o seu dia. - Chico Xavier"
  ];
    var _fraseGerada = "Clique abaixo para gerar uma frase!";
      void _gerarFrase(){
    var numeroSortiado = Random().nextInt( _frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSortiado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(

    // width: double.infinity,
   // padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
   // border: Border.all(width: 3, color: Colors.black)
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Image.asset("images/logo.png"),
    Text(
      _fraseGerada,
    textAlign: TextAlign.justify,
    style: TextStyle(
    fontSize: 27,
    fontStyle: FontStyle.italic,
    color: Colors.black,
    ),
    ),
    RaisedButton(
    child: Text(
    "Nova frase",
    style: TextStyle(
    fontSize: 37,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    ),
    ),
    color: Colors.green,
    onPressed: _gerarFrase,
    ),
    ],
    ),),
      ),
    );
  }
}
