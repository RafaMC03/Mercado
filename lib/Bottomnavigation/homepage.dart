import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/Bottomnavigation/carrinho/carrinho.dart';
import 'package:mercado/Bottomnavigation/carrinho/pagamento.dart';
import 'package:mercado/objetosDrawer/config.dart';
import 'package:mercado/index/index.dart';
import 'package:mercado/objetosDrawer/mConta.dart';
import 'package:mercado/objetosDrawer/pSalvos.dart';
import 'package:mercado/produtos/racao.dart';
import 'package:mercado/produtos/shampoo.dart';

import '../objetosDrawer/VCcadastrados.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool _Switch = false;
  final pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MySearchDelegate(),
              );
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.red,
                      Colors.blue,
                      Colors.pink,
                    ]),
              ),
              accountName: Text('Rafael Morais de Carvalho'),
              accountEmail: Text('rafamorais03@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('RM'),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box_rounded,
                color: Colors.black,
              ),
              title: Text(
                'Minha conta',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const minhaconta()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Colors.black,
              ),
              title: Text(
                'Cartões',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ccadastrados()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              title: Text(
                'Produtos salvos',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const salvos()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                'Configurações',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const configs()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Text(
                        'Chat do atendente',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    Switch(
                      value: _Switch,
                      onChanged: (value) {
                        setState(() {
                          _Switch = value;
                        });
                      },
                      activeTrackColor: Color.fromARGB(255, 2, 255, 10),
                      activeColor: Color.fromARGB(255, 0, 255, 8),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(172)),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text(
                'Sair da conta',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const indexPage()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Olá!'),
        icon: const Icon(Icons.support_agent_rounded),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Image.asset(
                                  'assets/images/atnd.png',
                                  height: 50,
                                  width: 50,
                                )),
                            Container(
                              height: 30,
                              width: 220,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                child: Text(
                                  'Como posso te ajudar?',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 12,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 300, 0, 10),
                                child: Container(
                                  child: Theme(
                                    data: ThemeData(primarySwatch: Colors.blue),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText:
                                              'Gostaria de saber das promoções!'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 300, 0, 10),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: IconButton(
                                    icon: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.send,
                                        color: Colors.black,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ));
        },
      ),
      body: PageView(
        controller: pageViewController,
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          IconButton(
                            iconSize: 120,
                            icon: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/racao.jpg',
                                ),
                              )),
                            ),
                            onPressed: () {
                              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const racaoDon()),
                          );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text(
                              'Ração GranPlus Choice Frango e Carne para Gatos Adultos\nRS121,98',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.green),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          IconButton(
                            iconSize: 120,
                            icon: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/shampoo.jpg'),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const shampooDon()),
                          );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text('Shampoo Ibasa Antipulgas Ibapet\nRS26,99',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 120,
                          icon: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/brinquedo.jpg'),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'Brinquedo Cachorro Odontopet Dentalbone Osso Sabor Menta para Cães Até 15kg\nRS22,99',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 120,
                          icon: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/coleira.jpg'),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'Conjunto Peitoral Style Mesh e Guia Chique\nRS64,99',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 120,
                          icon: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/cama.jpg'),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'Jogo Americano Fábrica Pet Decor Azul Marinho\nRS29,90',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 120,
                          icon: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/remedio.jpg'),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'Vermífugo Elanco Drontal Plus Sabor Carne - Cães 10 Kg\nRS45,90',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 120,
                          icon: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/casinha.jpg'),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'Casa Furacão Pet de Plástico - Azul\nRS129,90',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 120,
                          icon: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/biscoito.jpg'),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            'Biscoito Suprema para Cães Adultos Raças Pequenas\nRS18,90',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                child: Text(
                  'Compra segura - A Dons garante segurança\n para suas informações pessoais e financeiras\nCopyright 2020 © Todos os direitos reservados à Dons',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
          littleCar(),
        ],        
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: pageViewController?.page?.round() ?? 0,
              onTap: (index) {
                pageViewController.jumpToPage(index);
              },
              items: [
              BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Carrinho'),
            ],);
          }
        ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      'Ração para gatos',
      'Brinquedo de cachorro',
      'Shampoo antipulgas'
    ];

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
    );
  }
}
