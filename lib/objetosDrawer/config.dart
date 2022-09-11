import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class configs extends StatefulWidget {
  const configs({Key? key}) : super(key: key);

  @override
  State<configs> createState() => _configsState();
}

class _configsState extends State<configs> {

    bool _Switch = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Text('Deixe o app com sua cara!', 
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          ),
          ),
          Padding(padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
              onPressed: () {},
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Text('Linguagens',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,),
                  ),
                ],
              ),
            ),
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
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Text('Controle dos pais',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
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
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Text('Dispositivos conectados',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
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
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Text('Memorizar cartões',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
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
          ),
          Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Text('Gerenciar conta',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
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
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white, elevation: 0),
                onPressed: () {},
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Text('Ajuda & Feedback',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}