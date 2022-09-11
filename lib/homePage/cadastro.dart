import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/index/index.dart';

class cadastro extends StatefulWidget {
  const cadastro({Key? key}) : super(key: key);

  @override
  State<cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Image.asset(
              'assets/images/don.png',
              height: 300,
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              child: Text(
                'Digite seu nome completo:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Nome e sobrenome'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Container(
              child: Text(
                'Digite seu email:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'exemplo@email.com',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Container(
              child: Text(
                'Digite sua senha:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'A senha deve conter pelo menos 6 dígitos',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              height: 40,
              child: (Text(
                'Recomenda-se utilizar letras maiúsculas e símbolos.',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
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
                        builder: (context) => const indexPage(),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'Usuário cadastrado com sucesso!',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              height: 70,
              child: TextButton(
                child: Text(
                  'Ao criar uma conta, você concorda com as Condições de Uso da Dons. Caso queira saber mais clique aqui e leia ATENTAMENTE as condições.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 105, 104, 104)),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Text(
                              'Os serviços do Dons são fornecidos pela pessoa jurídica OU física com a seguinte Razão Social/nome: Rafael Morais de Carvalho, com nome fantasia faAko, inscrito no CNPJ/CPF sob o nº 123456789, titular da propriedade intelectual sobre software, website, aplicativos, conteúdos e demais ativos relacionados à plataforma Dons.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                          ),
                          Text(
                            'Termos de uso:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Text('1- Não passar a perna em ninguém\n2- Se comprometer a ser sincero\n3- O aplicativo não se responsabiliza por nenhum crime\n4- tmj',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,30, 20, 0),
                          ),
                          Text(
                            'Você aceita os termos de uso?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: ElevatedButton(
                                    child: Text('Aceito!'),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  child: ElevatedButton(
                                    child: Text('Não aceito.'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const indexPage()),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: const Text(
                                            'É necessário aceitar os termos para se cadastrar.',
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
