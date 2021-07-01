import 'dart:convert';

import 'package:componentes/src/pages/registro_page.dart';
import 'package:componentes/src/util/color.dart';
import 'package:componentes/src/widgets/cabecera.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = "";
  String _contrasena = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Cabecera(),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  children: [
                    _inputText(nombre: "Email", icono: Icons.email),
                    _inputContra(nombre: "Contraseña", icono: Icons.vpn_key),
                    Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Ha olvidado su contraseña?",
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        tomateColors),
                              ),
                              onPressed: () {
                                print(_email);
                                print(_contrasena);
                                iniciarSesion(_email, _contrasena);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegistroPage(),
                                    ));
                              },
                              child: Text("Iniciar Sesion")),
                        ),
                      ),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "No tienes una cuenta?",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "Registrate",
                          style: TextStyle(color: tomateColors))
                    ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _inputText({controller, nombre, icono}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        onChanged: (value) {
          _email = value;
        },
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: nombre,
            prefixIcon: Icon(icono)),
      ),
    );
  }

  Widget _inputContra({controller, nombre, icono}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        obscureText: true,
        onChanged: (value) {
          _contrasena = value;
        },
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: nombre,
            prefixIcon: Icon(icono)),
      ),
    );
  }

  iniciarSesion(email, contrasena) async {
    var url = "http://127.0.0.1:5000";
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'contrasena': contrasena,
      }),
    );

    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }
}
