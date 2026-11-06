import 'package:flutter/material.dart';
import 'package:saia_da_5_serie/Atividade/PesquisaReceita.dart';
import 'package:saia_da_5_serie/Aula3/Aula3.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PesquisaReceita(),
    );
  }
}