import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/Bottomnavigation/carrinho/pagamento.dart';

enum group { um, dois, tres }

class littleCar extends StatefulWidget {
  const littleCar({Key? key}) : super(key: key);

  @override
  State<littleCar> createState() => _littleCarState();
}

class _littleCarState extends State<littleCar> {
  TextEditingController _controller = TextEditingController();
  int qtd = 1;
  group _value = group.dois;

  @override
  void initState() {
    super.initState();
    _controller.text = '1';
    qtd = 1;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/racao.jpg',
                    height: 140,
                    width: 140,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 260,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        child: Text(
                          'Ração GranPlus Choice Frango e Carne para Gatos Adultos-10kg',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                      child: Text('Quantidade:'),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Expanded(
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
                        ),
                        Container(
                          width: 80,
                          child: Expanded(
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
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Expanded(
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
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(
              height: 30,
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/shampoo.jpg',
                    height: 140,
                    width: 140,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 220,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          'Shampoo Ibasa Antipulgas Ibapet',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                      child: Text('Quantidade:'),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Expanded(
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
                        ),
                        Container(
                          width: 80,
                          child: Expanded(
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
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Expanded(
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
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Divider(
              height: 30,
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
                Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: ElevatedButton(
                        child: Text('Finalizar compra'),
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const formas()),
                      );
                        },
                      ),
                    )
              ],
            ),
          ],
        ),
      ])
    );
  }
}
