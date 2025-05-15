import 'package:flutter/material.dart';
import 'package:myapp/widgets/tipo_pastel2.dart';

int quantity = 1;
double total = 30.25;

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 0.0),
                        colors: [
                          ?Colors.lightBlue[500],
                          ?Colors.lightBlueAccent[100],
                        ],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Italian Choco Cake",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        itemCake2(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ((MediaQuery.of(context).size.width - 175) / 2),
                      top: (MediaQuery.of(context).size.height+175) / 5),
                  child: Hero(

                    tag: "cakeitem",
                    child: ClipOval(
                      child: Image.asset(
                        "/cake.jpg",
                        fit: BoxFit.cover,
                        width: 175,
                        height: 175,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Quantity",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 25),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(250),
                        ),
                        width: 100,
                        height: 35,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: remove,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Text(
                                "$quantity",
                                style: TextStyle(
                                    //color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: add,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Total amount"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("\$$total"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.5,
                       child:ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: StadiumBorder(),
                ),
                          child: Text("Place Order",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22)),
              ), 

                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
    void add() {
    setState(() {
      quantity = quantity + 1;
      total = 30.25 * quantity;
    });
  }

  void remove() {
    setState(() {
      if (quantity > 1) {
        quantity = quantity - 1;
        total = 30.25 * quantity;
      }
    }
    );
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.3);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height /1.3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
