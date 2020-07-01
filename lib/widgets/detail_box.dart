import 'package:flutter/material.dart';
import 'piec_chart.dart';
import 'package:fluttertry/constants.dart';

class DetailtBox extends StatefulWidget {
  @override
  _DetailtBoxState createState() => _DetailtBoxState();
}

class _DetailtBoxState extends State<DetailtBox> {

  double _total = 0;


  @override
  void initState() {
    super.initState();
    calcolateTotalSpendings();
  }

  calcolateTotalSpendings() =>
    spendinds.forEach((element) { 
      _total += element['amount'];
    });
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text('Spendings', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
          margin: EdgeInsets.symmetric(horizontal: 35.0),
        ),
          Row(
                children: <Widget>[
                Expanded(
                  flex: 5,
                    child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: spendinds.map((value) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(backgroundColor: spendingsCOlor[spendinds.indexOf(value)], radius: 5.0,),
                              SizedBox(width: 5.0),
                              Text(value['name'] + " " + value['amount'].toString(), style: TextStyle(fontSize: 16.0),),
                            ],
                          ),
                        ),).toList(),
                      ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                    color: Color(0XFFC8D9EA),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue[900].withOpacity(.1),
                          offset: Offset(7, 7),
                          blurRadius: 10,
                          spreadRadius: -2
                          ),
                      BoxShadow(
                          spreadRadius: -10,
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 17),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: SizedBox(
                          child: CustomPaint(
                            child: Center(),
                            foregroundPainter: PieChart(),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                    color: Color(0XFFC8D9EA),
                    shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  offset: Offset(-2, -2),
                                  blurRadius: 10,
                                  ),
                              BoxShadow(
                                  color: Colors.blue[900].withOpacity(.5),
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                  spreadRadius: -2
                                  ),
                            ],
                          ),
                          child: Center(child: Text('€ ${_total.toString()}',style: TextStyle(fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
                SizedBox(width: 20.0)
              ],
            ),
      ],
    );
  }
}