import 'package:flutter/material.dart';
import 'Hex_tools.dart';

class HomeAnalyse extends StatefulWidget {
  const HomeAnalyse({Key? key}) : super(key: key);

  @override
  State<HomeAnalyse> createState() => _HomeAnalyseState();
}

class _HomeAnalyseState extends State<HomeAnalyse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leadingWidth: 85,
        leading: Container(
        alignment: FractionalOffset.center, // <
        child: Text('Edule',
        style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.black87, fontSize: 20),
    ),
    ),
          actions: <Widget> [
            Container(
              width: 150,
              alignment: FractionalOffset.center, // <
              child: Text('学びの記録',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black87, fontSize: 20),
              ),
            ),
          ],
    backgroundColor: HexColor('DFFDFF'),
    elevation: 1,
    ),
    body: Container(
    child: Column(
    children: <Widget> [
    const SizedBox(height: 50.0),
    Row(
    children: <Widget> [
    Container(
    width: 70,
    ),
    Text("Comming Soon",
    style: TextStyle(fontWeight: FontWeight.bold,
    color: Colors.black87, fontSize: 35),
    ),
    ],
    ),
    const SizedBox(height: 25.0),
    Row(
    children: <Widget> [
    Container(
    width: 40,
    ),
    Text("正式版リリースまでお待ちください",
    style: TextStyle(
    color: Colors.black87, fontSize: 20),
    ),
    ],
    ),
    ],
    )
    ),
    );
  }
}