import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

enum group { um, dois, tres }

class shampooDon extends StatefulWidget {
  const shampooDon({Key? key}) : super(key: key);

  @override
  State<shampooDon> createState() => _shampooDonState();
}

class _shampooDonState extends State<shampooDon> {
  TextEditingController _controller = TextEditingController();
  int qtd = 1;
  group _value = group.dois;
  bool _hearth = false;



  @override
  void initState() {
    super.initState();
    _controller.text = '1';
    qtd = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(
              'Shampoo Ibasa Antipulgas Ibapet',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Image.asset(
                    'assets/images/shampoo.jpg',
                    width: 170,
                    height: 170,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 160, 0, 0),
                child: IconButton(
            icon: Icon(
                _hearth == false ? Icons.favorite_border: Icons.favorite,
                color: Colors.red,
            ),
            onPressed: () {
                setState(() {
                  _hearth = !_hearth;
                });
            },
          ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 30, 0, 10),
                        child: Text('Quantidade'),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                              ),
                              onPressed: () {
                                setState(() {
                                  qtd++;
                                  _controller.text = '$qtd';
                                });
                              },
                            ),
                          ),
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Theme(
                            data: ThemeData(primarySwatch: Colors.blue),
                            child: TextFormField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                textAlign: TextAlign.center,
                            ),
                          ),
                              )),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (qtd <= 1) {
                                    null;
                                  } else {
                                    qtd--;
                                    _controller.text = '$qtd';
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                        child: Text(
                          'R\$26,99',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
            child: Text(
              'Informações:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 10, 10),
            child: Text(
                '-Antisséptico;\n-Indicado para limpeza e assepsia do pelo de cães e gatos;\n-Elimina pulgas, carrapatos e piolhos;\n-Com fórmula suave que pode ser aplicado em filhotes, a partir do 3º mês.'),
          ),
          Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 250, 10),
                child: Text(
                  'Digte seu CEP:',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 50, 0),
                      child: Theme(
                        data: ThemeData(primarySwatch: Colors.blue),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: '00000-000',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.black,
                              ))),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: Text('Calcular frete!'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 230, 0),
                child: Text(
                  'Opções de entrega',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Radio(
                        value: group.um,
                        groupValue: _value,
                        onChanged: (group? val) {
                          setState(() {
                            _value = val!;
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Icon(Icons.fire_truck),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      'Lento - em até 4 dias úteis\nFrete de R\$9,90',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                ],
              ),Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Radio(
                        value: group.dois,
                        groupValue: _value,
                        onChanged: (group? val) {
                          setState(() {
                            _value = val!;
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Icon(Icons.fire_truck),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      'Econômica - em até 6 dias úteis\nFrete grátis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                ],
              ), 
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Radio(
                        value: group.tres,
                        groupValue: _value,
                        onChanged: (group? val) {
                          setState(() {
                            _value = val!;
                          });
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Icon(Icons.fire_truck),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      'Rápido - em até 2 dias úteis\nFrete de R\$19,90',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                ],
              ), 
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: ElevatedButton(
                    child: Text('Adicionar ao carrinho'),
                    onPressed: () {},
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    child: Text('Comprar agora'),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          ExpansionTile(
            title: Text('Ficha técnica:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          ),
          children: [
            Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text('Indicação:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: Text('Cachorros e gatos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),             
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text('Apresentação:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: Text('5 L, 200 ml',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text('Raças:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: Text('Raças Pequenas, médias e grandes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text('Idade:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: Text('Filhotes, Adultos, Idosos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text('Marca:',
              style: TextStyle(               
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
              child: Text('Ibasa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              ),
              ),
            ],
          ),
          ],
          ),
        ],
      ),
    );
  }
}
