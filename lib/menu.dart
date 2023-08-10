import 'package:flutter/material.dart';
import 'category_screen.dart';

class MenuMain extends StatelessWidget {
  const MenuMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(237, 170, 0, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: Text('Depósito do Zé'),
        ),
        body: Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                CategoryCard('Cervejas'),
                CategoryCard('Vinhos'),
                CategoryCard('Destilados'),
                CategoryCard('Cachaças'),
                CategoryCard('Refrigerantes'),
                CategoryCard('Outros'),
              ],
            )),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  String categoria;
  CategoryCard(this.categoria);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Color.fromARGB(255, 223, 223, 210),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryScreen(categoria)),
          );
        },
        splashColor: Color.fromRGBO(237, 170, 0, 1),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.wine_bar_rounded, size: 40.0),
              Text(categoria,
                  style: new TextStyle(
                      fontSize: 17.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
