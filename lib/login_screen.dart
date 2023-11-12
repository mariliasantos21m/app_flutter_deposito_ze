import 'package:flutter/material.dart';
import 'menu.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Container(
            height: altura,
            width: largura,
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
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Image(
                              image: AssetImage('assets/logo_deposito.png'),
                              height: 300,
                              width: 300,
                            ),
                          )),
                      Align(
                          alignment: Alignment(0.0, 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 10),
                                child: TextField(
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  decoration: InputDecoration(
                                    labelText: 'Usuário',
                                    labelStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Align(
                          alignment: Alignment(0.0, 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 10),
                                child: TextField(
                                  autofocus: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  decoration: InputDecoration(
                                    labelText: 'Senha',
                                    labelStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 50),
                          child: ElevatedButton(
                              onPressed: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MenuMain()),
                                    ),
                                  },
                              child: Icon(
                                Icons.arrow_right_alt_outlined,
                                size: 40,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(237, 170, 0, 1),
                                shape: StadiumBorder(),
                                side: BorderSide(
                                    color: Color.fromRGBO(237, 170, 0, 1),
                                    width: 3),
                              ))),
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
            autofocus: true,
            keyboardType: TextInputType.number,
            style: TextStyle(color: Colors.black, fontSize: 20),
            decoration: InputDecoration(
              labelText: placeHolder,
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
