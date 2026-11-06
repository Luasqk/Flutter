import 'package:flutter/material.dart';

class PesquisaReceita extends StatefulWidget {
  const PesquisaReceita({super.key});

  @override
  State<PesquisaReceita> createState() => _PesquisaReceitaState();
}

class _PesquisaReceitaState extends State<PesquisaReceita> {

  final receita = TextEditingController();

  String? mensagemErro;
  String? resultadoPesquisa;

  void pesquisar() {

    final termo = receita.text.trim();

    setState(() {
      resultadoPesquisa = null;

      if (termo.isEmpty) {
        mensagemErro = "Digite o nome de uma receita.";
      } else {
        mensagemErro = null;
        resultadoPesquisa = termo;
      }
    });
  }

  @override
  void dispose() {
    receita.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navegador de Receitas"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [

            TextField(
              controller: receita,
              decoration: InputDecoration(
                labelText: "Digite o nome da receita",
                errorText: mensagemErro,
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: pesquisar,
              child: const Text("Pesquisar"),
            ),

            const SizedBox(height: 24),

            if (resultadoPesquisa != null)
              Text(
                "Receita de: $resultadoPesquisa pesquisada",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

          ],
        ),
      ),
    );
  }
}