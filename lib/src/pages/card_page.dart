import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Soy el titulo de la primera tarjeta"),
            subtitle: Text("La descripción de la tarjeta es"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text("Cancelar")),
              FlatButton(onPressed: () {}, child: Text("Ok")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage("assets/17.1 jar-loading.gif"),
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/5/53/Vaporwave-4K-Wallpapers.jpg"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          /*Image(
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/5/53/Vaporwave-4K-Wallpapers.jpg"),
          ),*/
          Container(
            child: Text("Hola esta es mi imagen"),
            padding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.black26,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            )
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
