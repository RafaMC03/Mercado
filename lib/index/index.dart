import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mercado/homePage/cadastro.dart';
import 'package:mercado/homePage/esqueci.dart';
import 'package:mercado/Bottomnavigation/homepage.dart';
import 'package:mercado/index/indexController.dart';
import 'package:mercado/index/indexController.dart';

class indexPage extends StatefulWidget {
  const indexPage({Key? key}) : super(key: key);

  @override
  State<indexPage> createState() => _indexPageState();
}

class _indexPageState extends State<indexPage> {
  bool _senha = false;
  bool lembrar = false;
  final _controller = LoginController();


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
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                controller: _controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Digite seu email ou número de telefone',
                  label: Text('Login'),
                  prefixIcon: Icon(Icons.how_to_reg),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Theme(
              data: ThemeData(primarySwatch: Colors.blue),
              child: TextFormField(
                controller: _controller.senha,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Digite sua senha',
                  label: Text('Senha'),
                  prefixIcon: Icon(Icons.lock),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: GestureDetector(
                    child: Icon(
                      _senha == false ? Icons.visibility_off: Icons.visibility,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      setState(() {
                        _senha = !_senha;
                      });
                    },
                  ),
                ),
                obscureText: _senha  == false ? true: false,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Checkbox(
                  value: lembrar, 
                  onChanged: (checked) {
                    setState(() {
                      lembrar = !lembrar;
                    });
                  }
                ),
                Text('Lembre-se de mim'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
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
                        'Entrar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    _controller.entrarOnPressed(
                      sucesso: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const home()),
                      );
                      },
                      falha: (motivo) {
                        ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text(
                            'Usuário ou senha inválidos!',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                      }
                      );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
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
                        'Cadastrar',
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
                MaterialPageRoute(builder: (context) => const cadastro()),
              );
                  },
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(5)),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: TextButton(
              child: Text(
                'Esqueci minha senha',
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const esqSenha()),
              );
              },
            ),
          ),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: TextButton(
              child: Text(
                'Saiba mais sobre nós',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
