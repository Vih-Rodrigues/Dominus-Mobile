import 'package:flutter/material.dart';
import 'package:flutter_application/repositories/avisos_repository.dart';

class TelaAvisos extends StatelessWidget {
  const TelaAvisos({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = AvisosRepository.tabela;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Avisos'),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemBuilder: (BuildContext context, int aviso) {
          return Card(
            child: Stack(
              children:[ 
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(50),
                  child: Text(
                    tabela[aviso].descricao,
                    
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.30,
                        MediaQuery.of(context).size.height * 0.015,
                        MediaQuery.of(context).size.width * 0.40,
                        MediaQuery.of(context).size.height * 0.015,
                      ),
                      child: Center(
                        child: Text(
                          tabela[aviso].titulo,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ),
          );
        },

        itemCount: tabela.length,
      ),
    );
  }
}
