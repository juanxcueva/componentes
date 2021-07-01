import 'package:componentes/src/util/color.dart';
import 'package:componentes/src/widgets/cabecera.dart';
import 'package:flutter/material.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
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
                    _inputText(nombre: "Nombre completo", icono: Icons.person),
                    _inputText(nombre: "Email", icono: Icons.email),
                    _inputText(nombre: "Numero de telefono", icono: Icons.call),
                    _inputText(nombre: "Contraseña", icono: Icons.vpn_key),
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
                                Navigator.pop(context);
                              },
                              child: Text("Registrarse")),
                        ),
                      ),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Ya tienes una cuenta?",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "Inicia sesion",
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
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: nombre,
            prefixIcon: Icon(icono)),
      ),
    );
  }
}
