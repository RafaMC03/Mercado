import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class minhaconta extends StatefulWidget {
  const minhaconta({Key? key}) : super(key: key);

  @override
  State<minhaconta> createState() => _minhacontaState();
}

class _minhacontaState extends State<minhaconta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: 170,
                  child: Image.asset('assets/images/pessoa.png'),
                ),
                Container(
                  height: 20,
                  width: 180,
                  child: Text(
                    'Seja bem-vindo Rafael!',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(
                    Icons.delivery_dining,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  label: Text(
                    'Meus pedidos',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(
                    Icons.alternate_email,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  label: Text(
                    'Senha e email',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
                label: Text(
                  'Notificações',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(
                    Icons.star_border,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  label: Text(
                    'Clube Dons',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(0, 30, 0, 0)),
          Divider(
            color: Colors.black,
            height: 20,
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
            child: Text(
              'Sobre o Dons:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(
                  Icons.contact_support_outlined,
                  color: Colors.black,
                ),
                onPressed: () {},
                label: Text(
                  'Tire sua dúvida',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                onPressed: () {},
                label: Text(
                  'Política de privacidade',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                icon: Icon(
                  Icons.support_agent_rounded,
                  color: Colors.black,
                ),
                onPressed: () {},
                label: Text(
                  'Central de atendimento',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 140, 0, 15),
            child: Text(
              'Dons Supermercados\nCNPJ:12345678/9098-76 \nRua flor do campo Naturapolis\nJosé Maria/MG CEP: 54321-123', //dados fictícios obviamente
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
