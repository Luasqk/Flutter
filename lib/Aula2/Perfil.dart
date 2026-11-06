import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Perfil Profissional'),
        backgroundColor: Colors.amber,
      ),

      // Row
      body: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TESTE APLICATIVO",style: TextStyle(fontSize: 30),),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(child: Icon(Icons.person)),
                        SizedBox(width: 16),
                        // Filho Linha 02
                        Expanded(
                            child: Text(
                              "Lucas Brandão - Estudante de Engenharia de Software",
                              style: TextStyle(fontSize: 18),
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text('Projetos acessíveis em: '),
                    SizedBox(height: 8),
                    Text('Londrina - Paraná')
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}