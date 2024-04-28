import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Exercício Montagem GUI",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue[200]),
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "TELA DE CADASTRO",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16.0),
            const Text(
                "NOME:",
                style: TextStyle(
                    fontSize: 16.0,
                ),
            ),
            const SizedBox(height: 10.0),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite o nome',
            ),
          ),
          const SizedBox(height: 16.0),
            const Text(
                "ENDEREÇO:",
                style: TextStyle(
                    fontSize: 16.0,
                ),
            ),
            const SizedBox(height: 10.0),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite o endereço',
            ),
          ),
          const SizedBox(height: 16.0),
            const Text(
                "EMAIL:",
                style: TextStyle(
                    fontSize: 16.0,
                ),
            ),
            const SizedBox(height: 10.0),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Digite o email',
            ),
          ),
          const SizedBox(height: 16.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    ElevatedButton(
                        onPressed: () {
                            _showAlertDialog(
                                context,
                                'Cancelar',
                                'Você clicou no botão Cancelar.',
                            );
                        },
                        child: Text('Cancelar'),
                    ),
                    const SizedBox(width: 8.0),
                    ElevatedButton(
                        onPressed: () {
                            _showAlertDialog(
                                context,
                                'Salvar',
                                'Você clicou no botão Salvar.',
                            );
                        },
                        child: Text('Salvar'),
                    ),
                ],
            ),
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context, String title, String message) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
              return AlertDialog(
                  title: Text(title),
                  content: Text(message),
                  actions: <Widget>[
                      TextButton(
                          onPressed: () {
                              Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                      ),
                  ],
              );
          },
      );
  }

}
