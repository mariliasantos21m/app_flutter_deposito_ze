import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  String categoryName;
  CategoryScreen(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(237, 170, 0, 1),
        title: Text(categoryName,
            style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 30.0),
          child: Column(children: [
            InputSearch(),
            TableItens(),
            ElevatedButton(
                onPressed: () => {},
                child: Text('+ Adicionar',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(237, 170, 0, 1),
                  shape: StadiumBorder(),
                  side: BorderSide(
                      color: Color.fromRGBO(237, 170, 0, 1), width: 3),
                ))
          ])),
    );
  }
}

class InputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Digite...',
              filled: true,
              suffixIcon: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TableItens extends StatelessWidget {
  const TableItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(
              border: TableBorder.all(color: Color.fromRGBO(255, 255, 255, 1)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                createRowHeadTable(),
                createRowTable(),
                createRowTable(),
                createRowTable(),
                createRowTable(),
                createRowTable(),
              ],
            )));
  }
}

createRowHeadTable() {
  return const TableRow(
    decoration: BoxDecoration(
      color: Color.fromRGBO(219, 218, 216, 1),
    ),
    children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
            padding: EdgeInsets.all(6.0),
            child: Text('Nome',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(8, 8, 8, 1)))),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Unidade',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(8, 8, 8, 1)))),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Caixa',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(8, 8, 8, 1)))),
      )
    ],
  );
}

createRowTable() {
  return const TableRow(
    children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Teste 1', style: TextStyle(fontSize: 18))),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('2.0', style: TextStyle(fontSize: 18))),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('20.0', style: TextStyle(fontSize: 18))),
      )
    ],
  );
}
