import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pagina_inicio.dart';

void main() => runApp(RestaurantApp());

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
        SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: PaginaInicio(),
    );
  }
}
