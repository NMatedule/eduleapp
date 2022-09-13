import 'package:flutter/material.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';
import 'setting_userinfo.dart';
import 'setting_profile.dart';
import 'setting_notice.dart';
import 'setting_privacy.dart';
import 'setting_help.dart';

class ManageSubject extends StatefulWidget {
  const ManageSubject({Key? key}) : super(key: key);

  @override
  State<ManageSubject> createState() => _ManageSubjectState();
}

class _ManageSubjectState extends State<ManageSubject> {
  bool _isObscure = true;

  final _formkey = GlobalKey<FormState>();

  var test = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          verticalDirection: VerticalDirection.up, // childrenの先頭を下に配置
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FloatingActionButton(
              heroTag: "btn1",
              backgroundColor: Colors.redAccent,
              child: Icon(Icons.delete),
              onPressed: () {
                print("pressed");
              },
            ),
            Container( // 余白のためContainerでラップ
              margin: EdgeInsets.only(bottom: 16.0),
              child: FloatingActionButton(
                heroTag: "btn2",
                backgroundColor: Colors.blue,
                child: Icon(Icons.edit),
                onPressed: () {
                  print("pressed");
                },
              ),
            ),
            Container( // 余白のためContainerでラップ
              margin: EdgeInsets.only(bottom: 16.0),
              child: FloatingActionButton(
                heroTag: "btn3",
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.add),
                onPressed: () {
                  print("pressed");
                },
              ),
            ),
          ],
        ),
        appBar: AppBar(
          leadingWidth: 150,
          leading: Row(
            children: [
              IconButton(
                onPressed: () {Navigator.pop(context);},
                icon: Icon(Icons.arrow_back_ios, size: 25,),
                color: Colors.black87,
              ),
              Container(
                alignment: FractionalOffset.center, // <
                child: Text('Edule',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black87, fontSize: 20),
                ),
              ),
            ],
          ),

          actions: <Widget> [
            Container(
              width: 150,
              alignment: FractionalOffset.center, // <
              child: Text('教材を管理',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black87, fontSize: 20),
              ),
            ),
          ],
          backgroundColor: HexColor('DFFDFF'),
          elevation: 1,
        ),
        body: Row(
            children: [
              Container(
                width: 30,
              ),
              Container(
                width: 355,
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    Container(
                        width: 355,
                        height: 60,
                        decoration: BoxDecoration(
                          color: HexColor('F1F1F1'),
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder:(context) => SettingProfile()
                                ));
                              },
                              child: const Text('　目的　　　　　　　　　　　　',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20)
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black87, size: 20,)
                          ],
                        )
                    ),

                    const SizedBox(height: 20.0),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: 355,
                        height: 60,
                        decoration: BoxDecoration(
                          color: HexColor('F1F1F1'),
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder:(context) => SettingUserInfo()
                                ));
                              },
                              child: const Text('　目標　　　　　　　　　　　　',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20)
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black87, size: 20,)
                          ],
                        ),
                    ),
                    const SizedBox(height: 30.0),
                    Text('教材　　　　　　　　　　　　         ',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.black87, fontSize: 23)
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 355,
                          height: 2,
                          color: Colors.black54,
                        )
                      ],
                    ),

                  ],
                ),
              )
            ]
        )
    );
  }
}