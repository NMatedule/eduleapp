import 'package:flutter/material.dart';
import 'Hex_tools.dart';
import 'manage_subject.dart';
import 'manage_plan.dart';

class HomePlan extends StatefulWidget {
  const HomePlan({Key? key}) : super(key: key);

  @override
  State<HomePlan> createState() => _HomePlanState();
}

class _HomePlanState extends State<HomePlan> {
  bool _isObscure = true;
  final _formkey = GlobalKey<FormState>();

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
              width: 100,
              alignment: FractionalOffset.center, // <
              child: Text('予定',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black87, fontSize: 20),
              ),
            ),
          ],
    backgroundColor: HexColor('DFFDFF'),
    elevation: 1,
    ),
    body: Column(
      children: [
        Container(
            width: 410,
            height: 70,
            decoration: BoxDecoration(
              color: HexColor('F1F1F1'),
            ),
            child : Column(
                children: [
                  Row(
                    children: <Widget> [
                      Container(
                        width: 80,
                      ),
                      Text("月",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                      Container(
                        width: 30,
                      ),
                      Text("火",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                      Container(
                        width: 30,
                      ),
                      Text("水",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                      Container(
                        width: 30,
                      ),
                      Text("木",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                      Container(
                        width: 30,
                      ),
                      Text("金",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                      Container(
                        width: 30,
                      ),
                      Text("土",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                      Container(
                        width: 30,
                      ),
                      Text("日",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 78,
                      ),
                      Text("N",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 30),
                      ),
                      Container(
                        width: 26,
                      ),
                      Text("N",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 30),
                      ),
                      Container(
                        width: 26,
                      ),
                      Text("N",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 30),
                      ),
                      Container(
                        width: 25,
                      ),
                      Text("N",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 30),
                      ),
                      Container(
                        width: 27,
                      ),
                      Text("N",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 30),
                      ),
                      Container(
                        width: 26,
                      ),
                      Text("N",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 30),
                      ),
                      Container(
                        width: 26,
                      ),
                      Text("N",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 30),
                      ),
                    ],
                  )
                ]
            )
        ),
        Container(
            width: 410,
            height:510,
            child: SingleChildScrollView(
                child: Row(
                  children: <Widget> [
                    Container(
                      width: 60,
                      height: 2500,
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
                            Text("0:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("1:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("1:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("2:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("2:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("3:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("3:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("4:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("4:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("5:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("5:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("6:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("6:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("7:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("7:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("8:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("8:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("9:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("9:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("10:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("10:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("11:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("11:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("12:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("12:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("13:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("13:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("14:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("14:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("15:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("15:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("16:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("16:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("17:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("17:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("18:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("18:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("19:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("19:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("20:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("20:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("21:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("21:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("22:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("22:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("23:00",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30),
                            Text("23:30",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            const SizedBox(height:30)
                          ]
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 2500,
                    )
                  ],
                )
            )
        ),
        Container(
            width: 410,
            height: 119,
            child: Row(
                children: <Widget> [
                  Container(
                    width: 10,
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 25.0),
                      IconButton(
                        icon : Icon(Icons.arrow_back_ios),
                        onPressed: () {
                        },
                        iconSize: 30,
                        color: Colors.black87,
                      ),
                      Text("前の週",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 13),
                      )
                    ],
                  ),
                  Container(
                    width: 290,
                    height: 99,
                    child: Column(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.blue),
                            foregroundColor:
                            MaterialStateProperty.all(Colors.black87),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder:(context) => ManagePlan()
                            ));
                          },
                          child: const Text('　　　　予定を作成　　　　',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.blue),
                            foregroundColor:
                            MaterialStateProperty.all(Colors.black87),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder:(context) => ManageSubject()
                            ));
                          },
                          child: const Text('　　学習計画を自動作成　　',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 25.0),
                      IconButton(
                        icon : Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                        },
                        iconSize: 30,
                        color: Colors.black87,
                      ),
                      Text("次の週",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 13),
                      )
                    ],
                  )
                ]
            )
        )
      ],
    )

    );
  }
}