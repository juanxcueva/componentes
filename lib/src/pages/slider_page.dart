import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 1.0;
  bool _bloquearCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearChecbox(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.orangeAccent,
      label: "Tamaño de la imagen",
      min: 0.0,
      max: 400.0,
      value: _valorSlider,
      onChanged: (_bloquearCheckbox)
          ? null
          : (value) {
              setState(() {
                _valorSlider = value;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://laopinion.com/wp-content/uploads/sites/3/2021/04/f-9-FF9_Adv1Sheet3_June25_rgb-e1618427506835.jpg?quality=80&strip=all&w=1200"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearChecbox() {
    return CheckboxListTile(
      title: Text("Bloquear slider"),
      value: _bloquearCheckbox,
      onChanged: (value) {},
    );
    /*
    return Checkbox(
      value: _bloquearCheckbox,
      onChanged: (value) {
        setState(() {
          _bloquearCheckbox = value;
        });
      },
    );*/
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text("Bloquear slider"),
      value: _bloquearCheckbox,
      onChanged: (value) {},
    );
  }
}
