import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class salvos extends StatefulWidget {
  const salvos({Key? key}) : super(key: key);

  @override
  State<salvos> createState() => _salvosState();
}

class _salvosState extends State<salvos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text('Seus produtos salvos:',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
              child: Image.asset('assets/images/racao.jpg',
              width: 150,
              height: 150,),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
              child: IconButton(
                icon: Icon(
                  Icons.delete_outline
                ),
                onPressed: () {},
              ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Image.asset('assets/images/shampoo.jpg',
              width: 150,
              height: 150,),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
              child: IconButton(
                icon: Icon(
                  Icons.delete_outline
                ),
                onPressed: () {},
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}