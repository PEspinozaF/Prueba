
import 'navigation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget renderEmailInput(){
    return Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TextFormField (
              decoration: InputDecoration(hintText: 'Nombre de usuario')
            ),
          );
  }

Widget renderPasswordInput(){
  return Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TextFormField (
              decoration: InputDecoration(hintText: 'Contraseña'),
              obscureText: true,
            ),
          );
}

Widget renderLoginButton(){
  return Container(
    padding: const EdgeInsets.only(top: 32),
    child: RaisedButton(
      child: Text('Entrar'),
      onPressed: (){},
      ));
}

Widget renderCreateAccountLink(){
  return Container(
    padding: EdgeInsets.only(top: 24),
    child: Text(
      'Crea tu cuenta aqui',
      textAlign: TextAlign.right,
      style: TextStyle(fontWeight: FontWeight.bold),
    ));   
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView (children: [
          Image.asset(
            'assets/images/logo.png',
            height: 300
          ),
          renderEmailInput(),
          renderPasswordInput(),
          renderLoginButton(),
          renderCreateAccountLink()
        ]),
      )
    );  
  }
}