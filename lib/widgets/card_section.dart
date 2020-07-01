import 'package:flutter/material.dart';
import 'package:fluttertry/main.dart';

class CardSection extends StatelessWidget {
  const CardSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35.0,
            ),
            child: Align(
              child: Text(
                'Selected card',
                style: TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.topLeft,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, _) {
                return Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 40.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue[900].withOpacity(.1),
                          offset: Offset(7, 7),
                          blurRadius: 10),
                      BoxShadow(
                          spreadRadius: -10,
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 17),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          top: 100,
                          bottom: -300,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned.fill(
                          left: -300,
                          top: -50,
                          bottom: -50,
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blue[900]
                                          .withOpacity(.1),
                                      offset: Offset(30, 0),
                                      blurRadius: 30),
                                ],
                                color: Colors.white24,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          top: 40.0,
                          left: 10.0,
                          width: 200.0,
                          child: Image.network(
                              'https://brand.mastercard.com/content/dam/mccom/brandcenter/thumbnails/mastercard_hrz_pos_300px_2x.png'),
                        ),
                        Positioned(
                          top: 150,
                          left: 25,
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '**** **** ****',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '1930',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'PLATINUM CARD',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 180,
                          right: 40,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0XFFCEDCEC),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue[900]
                                        .withOpacity(.1),
                                    offset: Offset(9, 9),
                                    blurRadius: 10),
                              ],
                            ),
                            child: Image.network(
                              "https://pngriver.com/wp-content/uploads/2018/04/Download-Chip-PNG-Transparent-Image.png",
                              color: Color(0X68BFD1E5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
