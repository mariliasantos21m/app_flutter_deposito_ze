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
      body: Container(margin: EdgeInsets.only(top: 30.0), child: createTable()),
    );
  }
}

createTable() {
  return DataTable(columns: [
    DataColumn(
        label: Text('Nome',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
    DataColumn(
        label: Text('Unidade',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
    DataColumn(
        label: Text('Caixa',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
  ], rows: [
    DataRow(cells: [
      DataCell(Text('Name Test')),
      DataCell(Text('2.0')),
      DataCell(Text('10.0')),
    ]),
    DataRow(cells: [
      DataCell(Text('Name Test')),
      DataCell(Text('2.0')),
      DataCell(Text('10.0')),
    ]),
    DataRow(cells: [
      DataCell(Text('Name Test')),
      DataCell(Text('2.0')),
      DataCell(Text('10.0')),
    ]),
    DataRow(cells: [
      DataCell(Text('Name Test')),
      DataCell(Text('2.0')),
      DataCell(Text('10.0')),
    ])
  ]);
}
