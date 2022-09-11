import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/Bottomnavigation/carrinho/carrinho.dart';
import '../../objetosDrawer/VCcadastrados.dart';

class formas extends StatefulWidget {
  const formas({Key? key}) : super(key: key);

  @override
  State<formas> createState() => _formasState();
}

class _formasState extends State<formas> {
  bool lembrar = false;
  group _value = group.dois;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text(
              'Digite seu endereço:',
              style: TextStyle(fontSize: 21, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Rua são josé...',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Checkbox(
                    value: lembrar,
                    onChanged: (checked) {
                      setState(() {
                        lembrar = !lembrar;
                      });
                    }),
                Text('Lembre-se desse endereço'),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 250, 10),
                child: Text(
                  'Complemento:',
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
                              hintText: 'APT-2',
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
                        child: Text('Calcular frete'),
                        onPressed: () {},
                      ),
                    ),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Row(
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 190, 10),
                    child: Text(
                      'Formas de pagamento:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ExpansionTile(
                      title: Text(
                        'Cartão de crédito',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Theme(
                            data: ThemeData(primarySwatch: Colors.blue),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  label: Text('Número do cartão'),
                                  labelStyle: TextStyle(height: 3),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Theme(
                            data: ThemeData(primarySwatch: Colors.blue),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  label: Text('Nome impresso no cartão'),
                                  labelStyle: TextStyle(height: 3),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Theme(
                                  data: ThemeData(primarySwatch: Colors.blue),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        label: Text('Validade'),
                                        labelStyle: TextStyle(height: 3),
                                        hintText: 'MM/AA',
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black))),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Theme(
                                  data: ThemeData(primarySwatch: Colors.blue),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        label: Text('CVV'),
                                        labelStyle: TextStyle(height: 3),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: TextButton(
                            child: Text('Utilizar cartão já cadastrdo'),
                            onPressed: () {
                              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ccadastrados()),
                      );
                            },
                          ),
                        ),
                        Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ElevatedButton(
                      child: Text('Finalizar pedido'),
                      onPressed: () {},
                    ),
                  ),
                      ],
                    ),                    
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ExpansionTile(
                      title: Row(
                        children: [
                          Text('Pix',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text('Aprovação em minutos',
                            style: TextStyle(
                              color: Colors.green
                            ),),
                          )
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Container(
                            width: 330,
                            child: Text('O código Pix será exibido ao finalizar o pedido e você deverá realizar o pagamento no aplicativo do seu banco. Você receberá o código por e-mail e também poderá consultá-lo no menu “Configurações - Meus Pedidos”.',
                            style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Container(
                            width: 330,
                            child: Text('O código Pix tem vencimento em 2 dias corridos. Após esse prazo, o pedido será cancelado automaticamente.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ElevatedButton(
                      child: Text('Finalizar pedido'),
                      onPressed: () {},
                    ),
                  ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: ExpansionTile(
                      title: Text('Boleto',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      children: [
                        Container(
                          width: 330,
                          child: Text('O boleto será exibido ao finalizar o pedido, você também o receberá por e-mail.',
                          style: TextStyle(
                            fontSize: 15
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Container(
                            width: 330,
                            child: Text('Lembre-se que o boleto tem vencimento em 2 dias úteis e pode ser pago em qualquer agência bancária, casa lotérica ou Internet Banking. Após esse prazo o pedido será cancelado automaticamente.',
                            style: TextStyle(
                              fontSize: 15
                            ),
                            ),
                          ),
                        ),
                        Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ElevatedButton(
                      child: Text('Finalizar pedido'),
                      onPressed: () {},
                    ),
                  ),
                      ],
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
