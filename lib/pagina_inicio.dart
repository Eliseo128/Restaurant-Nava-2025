
import 'package:flutter/material.dart';
import 'package:myapp/info.dart';
import 'package:myapp/widgets/platillo_especial.dart';
import 'package:myapp/widgets/tipo_jugo.dart';
import 'package:myapp/widgets/tipo_pastel.dart';
import 'package:myapp/widgets/tipo_pizza.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({super.key});

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text("Restaurant"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Hero(
              tag: "cakeitem",
              child: FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InfoPage()),
                    );
                  },
                  child: Card(
                    // color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Row(
                      children: <Widget>[
                        itemcake(),
                        SizedBox(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage('/cake.jpg'),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    juiceitem(),
                    SizedBox(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('/juice.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    pizzaitem(),
                    SizedBox(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('/pizza.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    eliteitem(),
                    SizedBox(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('/elite.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}