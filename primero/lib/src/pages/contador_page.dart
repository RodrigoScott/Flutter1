import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25) ;

  int _cont = 0;

  @override
  Widget build(BuildContext context) {

      // TODO: implement build
      return Scaffold(

        appBar: AppBar(
          title: Text('Primera Aplicación'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clics', style: _estiloTexto),
              Text('$_cont', style: _estiloTexto),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: _crearBoton(),

      );
    }

  Widget _crearBoton() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( child: Icon(Icons.exposure_zero ), onPressed: _reset ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove ), onPressed: _sustraer ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon(Icons.add ), onPressed: _agregar ),
      ],
    );

  }

  void _agregar() {
    setState(() => _cont++ );
  }

  void _sustraer() {
    setState(() => _cont-- );
  }

  void _reset() {
    setState(() => _cont = 0 );
  }

}

