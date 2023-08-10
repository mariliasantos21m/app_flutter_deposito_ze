import 'package:flutter/material.dart';
import 'menu.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      child:
                          Image(image: AssetImage('assets/logo_deposito.png'))),
                  ElevatedButton(
                      onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuMain()),
                            ),
                          },
                      child: Icon(
                        Icons.arrow_right_alt_outlined,
                        size: 70,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(237, 170, 0, 1),
                        shape: StadiumBorder(),
                        side: BorderSide(
                            color: Color.fromRGBO(237, 170, 0, 1), width: 3),
                      )),
                ]))));
  }
}
