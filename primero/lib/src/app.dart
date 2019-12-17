
import 'package:flutter/material.dart';
import 'package:primero/src/pages/contador_page.dart';


//import 'package:primero/src/pages/home_page.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: 'ContadorPage',
      //routes: {
        //'ContadorPage': (BuildContext Context) => ContadorPage()
      //},

      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }

}