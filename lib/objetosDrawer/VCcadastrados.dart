import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../cartão/cartao.dart';

enum group2 { um, dois }

class Ccadastrados extends StatefulWidget {
  const Ccadastrados({Key? key}) : super(key: key);

  @override
  State<Ccadastrados> createState() => _CcadastradosState();
}

class _CcadastradosState extends State<Ccadastrados> {

  group2 _value = group2.um;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1)
                  ),
                  child: Row(
                    children: [
                      Radio(
                        value: group2.um,
                        groupValue: _value, 
                        onChanged: (group2? val){
                          setState(() {
                            _value = val!;
                          });
                        }
                        ),
                      Image.asset(
                        'assets/images/visa.png',
                        width: 60,
                        height: 60,
                      ),                 
                      Column(
                        children: [
                          Container(
                            width: 270,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                              child: Text(
                                'Cartão de crédito terminado em ****1234',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 235, 0),
                            child: TextButton(                         
                              child: Text('Editar'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1)
                  ),
                  child: Row(
                    children: [
                      Radio(
                        value: group2.dois, 
                        groupValue: _value, 
                        onChanged: (group2? val){
                          setState(() {
                            _value = val!;
                          });
                        }
                        ),
                      Image.asset(
                        'assets/images/mastercard.png',
                        width: 60,
                        height: 60,
                      ),              
                      Column(
                        children: [
                          Container(
                            width: 270,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 35, 0, 0),
                              child: Text(
                                'Cartão de crédito terminado em ****5678',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 235, 0),
                            child: TextButton(                         
                              child: Text('Editar'),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Container(
              height: 60,
              width: 50,
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
                        'Cadastrar um novo cartão',
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
                MaterialPageRoute(builder: (context) => const pagamento()),
              );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
