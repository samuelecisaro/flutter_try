import 'package:flutter/material.dart';
import 'widgets/detail_box.dart';
import 'widgets/header_wallet.dart';
import 'widgets/card_section.dart';

void main() {
  runApp(MyApp());
}

const primaryColor = Color(0XFFC8D9EA);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Try to do things',
      home: TestApp(),
    );
  }
}

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            HeaderWallet(),
            SizedBox(
              height: 20.0,
            ),
            CardSection(),
            Expanded(
              child: DetailtBox(),
            )
          ],
        ),
      ),
    );
  }
}


