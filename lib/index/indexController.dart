import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  final email = TextEditingController();
  final senha = TextEditingController();

  void entrarOnPressed({
    required VoidCallback sucesso, 
    required VoidCallback? falha(String motivo)
    }
    ){
    if ((email.text == 'don') && senha.text == 'nininha'){
      sucesso();
    }else{
      falha('Usuário e senha não cadastrados');
    }
  }
}