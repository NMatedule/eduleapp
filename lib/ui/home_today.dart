import 'package:flutter/material.dart';
import 'Hex_tools.dart';

class HomeToday extends StatefulWidget {
  const HomeToday({Key? key}) : super(key: key);

  @override
  State<HomeToday> createState() => _HomeTodayState();
}

class _HomeTodayState extends State<HomeToday> {
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
            child: Text('今日の学び',
              style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black87, fontSize: 20),
            ),
          ),
        ],
        backgroundColor: HexColor('DFFDFF'),
        elevation: 1,
      ),
        body: Container(
            child: Row(
              children: <Widget> [
                SingleChildScrollView(
                  child: Row(
                      children: <Widget> [
                        Container(
                            width: 60,
                            height: 4725,
                            decoration: BoxDecoration(
                              color: HexColor('F1F1F1'),
                            ),
                            child: Column(
                              children: <Widget> [
                                //要修正＝＞短縮化、開始時間変動
                                const SizedBox(height:30),
                                Text("0:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("0:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("0:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("0:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("1:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("1:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("1:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("1:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("2:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("2:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("2:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("2:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("3:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("3:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("3:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("3:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("4:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("4:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("4:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("4:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("5:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("5:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("5:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("5:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("6:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("6:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("6:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("6:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("7:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("7:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("7:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("7:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("8:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("8:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("8:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("8:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("9:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("9:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("9:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("9:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("10:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("10:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("10:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("10:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),const SizedBox(height:30),
                                Text("11:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("11:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("11:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("11:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),const SizedBox(height:30),
                                Text("12:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("12:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("12:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("12:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),const SizedBox(height:30),
                                Text("13:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("13:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("13:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("13:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),const SizedBox(height:30),
                                Text("14:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("14:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("14:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("14:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),const SizedBox(height:30),
                                Text("15:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("15:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("15:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("15:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("16:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("16:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("16:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("16:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("17:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("17:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("17:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("17:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("18:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("18:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("18:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("18:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("19:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("19:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("19:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("19:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("20:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("20:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("20:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("20:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("21:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("22:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("22:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("22:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("23:00",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("23:15",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("23:30",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                                Text("23:45",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                                const SizedBox(height:30),
                              ],
                            )
                        ),
                        Container(
                          width: 150,
                          height: 4725,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ]
                  ),
                ),
                Container(
                  width: 200,
                  height: 700,
                  decoration: BoxDecoration(
                    color: HexColor('F1F1F1'),
                  ),
                  child: Column(
                    children: <Widget> [
                      const SizedBox(height: 15.0),
                      Row(
                        children: <Widget> [
                          Container(
                            width: 10,
                          ),
                          Container(
                            width: 185,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      Text("未完了の学び",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 20),
                      ),
                      const SizedBox(height: 100.0),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 10,
                          ),
                          Container(
                            width: 185,
                            height: 2,
                            color: Colors.black54,
                          )
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Text("完了した学び",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 20),
                      ),
                    ],
                  ),
                ),

              ],
            )
        ),
    );
  }
}
