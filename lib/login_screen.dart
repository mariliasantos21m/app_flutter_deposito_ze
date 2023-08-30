import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 1),
                    Color.fromRGBO(255, 255, 255, 1),
                  ],
                )),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                      Align(
                          alignment: Alignment(0.0, 8.0),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Image(
                                image: AssetImage('assets/logo_deposito.png')),
                          )),
                      Align(
                          alignment: Alignment(0.0, 8.0),
                          child: InputLogin('Usuario')),
                      Align(
                          alignment: Alignment(0.0, 8.0),
                          child: InputLogin('Senha'))
                    ])))));
  }
}

class InputLogin extends StatelessWidget {
  String placeHolder;
  InputLogin(this.placeHolder);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: TextField(
              decoration: InputDecoration(
                  border:
                      OutlineInputBorder(borderSide: BorderSide(width: 3.0)),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  hintText: placeHolder,
                  fillColor: Color(0xFFFFFFFF),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(237, 170, 0, 1), width: 3.0)))),
        ),
      ],
    );
  }
}
