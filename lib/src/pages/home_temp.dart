import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes temp"),
      ),
      body: ListView(
          //children: _crearItems(),
          children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempwid = ListTile(
        title: Text(opt),
      );
      lista.add(tempwid);
      lista.add(Divider(
        color: Colors.blue,
        height: 10.0,
      ));
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            leading: Icon(Icons.account_circle_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
