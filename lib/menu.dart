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
            color: Color.fromRGBO(237, 170, 0, 1),
            child: Container(
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                padding: EdgeInsets.all(30.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    CategoryCard('Cervejas', 'assets/beer.png'),
                    CategoryCard('Vinhos', 'assets/wine.png'),
                    CategoryCard('Destilados', 'assets/destilados.png'),
                    CategoryCard('Cachaças', 'assets/liquor.png'),
                    CategoryCard('Refrigerantes', 'assets/soft_drink.png'),
                    CategoryCard('Outros', 'assets/others.png'),
                  ],
                )),
          )),
    );
  }
}

class CategoryCard extends StatelessWidget {
  String categoria;
  String img;
  CategoryCard(this.categoria, this.img);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15.0),
      color: Color.fromRGBO(238, 237, 237, 1),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryScreen(categoria)),
          );
        },
        splashColor: Color.fromRGBO(255, 234, 182, 1),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                  alignment: Alignment(0.0, 1.0),
                  child: Image(
                    image: AssetImage(img),
                    width: 50,
                    height: 50,
                    color: Color.fromRGBO(237, 170, 0, 1),
                    fit: BoxFit.contain,
                  )),
              SizedBox(height: 10),
              Text(categoria,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.creditCardName,
                      fontSize: 15.0,
                      color: Color.fromRGBO(0, 0, 0, 1))),
            ],
          ),
        ),
      ),
    );
  }
}
