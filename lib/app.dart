import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercado/index/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercado',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: ('Arial')
      ),
      home: const indexPage(),
    );
  }
}
