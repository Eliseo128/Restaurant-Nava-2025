  import 'package:flutter/material.dart';

Widget itemcake() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "Italian Choco Cake",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Dark belgium chocolate",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 9.5,
              color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.shopping_cart,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 35,
              decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                //color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                "Cold",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 35,
              decoration: BoxDecoration(
                color: Colors.red[100],
                //color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Text(
                "Fresh",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Ratings",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 7,
                  color: Colors.grey),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.orangeAccent,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.orangeAccent,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.orangeAccent,
            ),
            Icon(
              Icons.star,
              size: 10,
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ],
    );
  }