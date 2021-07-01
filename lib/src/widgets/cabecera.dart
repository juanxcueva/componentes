import 'package:componentes/src/util/color.dart';
import 'package:flutter/material.dart';

class Cabecera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [tomateColors, tomateClaroColors],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))),
      child: Center(
        child: Image.asset("assets/Logo2.png"),
      ),
    );
  }
}
