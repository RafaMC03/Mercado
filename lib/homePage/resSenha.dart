import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/index/index.dart';

class newSenha extends StatefulWidget {
  const newSenha({Key? key}) : super(key: key);

  @override
  State<newSenha> createState() => _newSenhaState();
}

class _newSenhaState extends State<newSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          Padding(padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Container(
            child: Text('Digite sua nova senha:',
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.left,
            ),
          ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: TextFormField(
            )
          ),
          Padding(padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Container(
            child: Text('Digite novamente sua senha:',
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.left,
            ),
          ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
           child: TextFormField(
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
                        'Prosseguir',
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
                      MaterialPageRoute(builder: (context) => const indexPage(),),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      'Senha alterada!',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
                  },
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
          child: Container(
            child: TextButton(
              child: Text('Precisa de ajuda?',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
              ),
              textAlign: TextAlign.left,
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