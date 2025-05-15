import 'package:flutter/material.dart';

Widget itemCake2() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 15,
      ),
      Text(
        "Dark Belgium chocolate",
        style: TextStyle(
            fontWeight: FontWeight.normal, fontSize: 15, color: Colors.white),
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Container(
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Cold",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Fresh",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "\$30.25",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black54),
              ),
              Text(
                "per Quantity",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                    color: Colors.black),
              )
            ],
          )
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 5,
          ),
          Icon(Icons.star, size: 15, color: Colors.orangeAccent),
          Icon(Icons.star, size: 15, color: Colors.orangeAccent),
          Icon(Icons.star, size: 15, color: Colors.orangeAccent),
          Icon(Icons.star, size: 15, color: Colors.orangeAccent),
          Icon(Icons.star, size: 15, color: Colors.orangeAccent),
        ],
      ),
    ],
  );
}
