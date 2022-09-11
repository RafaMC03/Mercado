import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/homePage/resSenha.dart';

class esqSenha extends StatefulWidget {
  const esqSenha({Key? key}) : super(key: key);

  @override
  State<esqSenha> createState() => _esqSenhaState();
}

class _esqSenhaState extends State<esqSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
            child: Container(
              child: Text(
                'Para redefinir sua senha siga os seguintes passos:',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
            child: Container(
              child: Text(
                'Enviaremos um email com instruções de como redefinir sua senha.',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Container(
              child: Text(
                'Digite o código:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextFormField(
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.1,
                      0.5,
                      1,
                    ],
                    colors: [
                      Colors.red,
                      Colors.blue,
                      Colors.pink,
                    ]),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Continuar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const newSenha(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
              child: Text(
                'Seu endereço de e-mail ou seu número de telefone celular foi alterado? Acesse o atendimento ao cliente para falar com um de nossos atendentes.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              child: TextButton(
                child: Text('Atendimento ao cliente',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
                ),
                onPressed: () {},
              ),
              ),
          ),
        ],
      ),
    );
  }
}
