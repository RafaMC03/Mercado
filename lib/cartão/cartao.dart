import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/Bottomnavigation/homepage.dart';

class pagamento extends StatefulWidget {
  const pagamento({Key? key}) : super(key: key);

  @override
  State<pagamento> createState() => _pagamentoState();
}

class _pagamentoState extends State<pagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
          ),
          Text(
            'Dados do titular do cartão:',
            style: TextStyle(fontSize: 23),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Text('Número do cartão:'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 20, 0),
                child: Text('Validade:'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 30, 20, 0),
                child: Text('Código de segurança:'),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 80, 0),
                    child: Theme(
                      data: ThemeData(primarySwatch: Colors.blue),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'AA/MM',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    )),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 110, 0),
                    child: Theme(
                      data: ThemeData(primarySwatch: Colors.blue),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'CVV',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text('Nome completo:'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nome e sobrenome',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text('CPF:'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: '___.___.___-__',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Text('Telefone:'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Text('Data de nascimento:'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 50, 0),
                  child: Theme(
                    data: ThemeData(primarySwatch: Colors.blue),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '(__)____-____',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Theme(
                    data: ThemeData(primarySwatch: Colors.blue),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'DD/MM/AAAA',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 0),
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
                        'Cadastrar cartão',
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
                      MaterialPageRoute(builder: (context) => const home()),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                        'Cartão cadastrado com sucesso!',
                        textAlign: TextAlign.center,
                      )),
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
