import 'package:flutter/material.dart';
import 'package:fluttertry/main.dart';

class HeaderWallet extends StatelessWidget {
  const HeaderWallet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "John Doe's Wallet",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.blue[900].withOpacity(.1),
                  offset: Offset(7, 7),
                  blurRadius: 10,
                  spreadRadius: -2),
              BoxShadow(
                  spreadRadius: -10,
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 17),
            ],
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue[900].withOpacity(.1),
                          offset: Offset(7, 7),
                          blurRadius: 10),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue[900].withOpacity(.1),
                          offset: Offset(7, 7),
                          blurRadius: 10),
                    ],
                  ),
                ),
              ),
              Center(
                child: Icon(Icons.beach_access),
              )
            ],
          ),
        ),
      ],
    );
  }
}
