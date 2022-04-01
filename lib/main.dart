// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'dart:math';

void main () {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  //const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A persistência é o caminho do êxito.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "É parte da cura o desejo de ser curado.",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons.",
    "É sempre divertido fazer o impossível",
    "A coisa mais cara é transformar um cliente insatisfeito em satisfeito",
    "Experiência é o nome que cada um dá a seus erros",
    "O talento vence jogos, mas só o trabalho em equipe vence campeonatos",
    "A arte de ser ora audacioso, ora prudente, é a arte de vencer",
    "Prefiro os erros do entusiasmo à indiferença da sabedoria"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase () {

    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases [ numeroSorteado ];
    });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.jpeg", width: 230),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple
                  ),
                ),
                TextButton(
                  child: Text(
                    "Nova frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.amber,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shadowColor: Colors.black12
                  ),
                  onPressed: _gerarFrase,
                )
              ],
            ),
          ),
        )
    );
  }
}

