import 'package:flutter/material.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';
import 'setting_userinfo.dart';
import 'setting_profile.dart';
import 'setting_notice.dart';
import 'setting_privacy.dart';
import 'setting_help.dart';
import 'package:flutter/cupertino.dart';

class ManagePlan extends StatefulWidget {
  const ManagePlan({Key? key}) : super(key: key);

  @override
  State<ManagePlan> createState() => _ManagePlanState();
}

class _ManagePlanState extends State<ManagePlan> {
  bool _isObscure = true;

  final _formkey = GlobalKey<FormState>();

  var test = false;
  bool isChecked = false;

  bool _googlecalendar_active = false;
  bool _ioscalendar_active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Text('予定を管理',
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
                    const SizedBox(height: 200.0),
                    Visibility(
                      visible: !_ioscalendar_active,
                      child: Container(
                        width: 355,
                        height: 60,
                        decoration: BoxDecoration(
                          color: HexColor('F1F1F1'),
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          title: Text('Googleカレンダーと同期',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.black87, fontSize: 20)),
                          trailing: CupertinoSwitch(
                            value: _googlecalendar_active,
                            onChanged: (bool value) {
                              setState(() {
                                _googlecalendar_active = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                        visible: !_googlecalendar_active,
                        child: Column(
                          children: [
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
                              child: ListTile(
                                title: Text('iOSカレンダーと同期',
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black87, fontSize: 20)),
                                trailing: CupertinoSwitch(
                                  value: _ioscalendar_active,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _ioscalendar_active = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    const SizedBox(height: 20.0),
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
                                    builder:(context) => SettingNotice()
                                ));
                              },
                              child: const Text('　基本的な習慣　　　　　　　　',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20)
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black87, size: 20,)
                          ],
                        )
                    ),
                    Visibility(
                      visible: !_googlecalendar_active && !_ioscalendar_active,
                      child: Column(
                        children: [
                          const SizedBox(height: 20.0),
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
                                          builder:(context) => SettingPrivacy()
                                      ));
                                    },
                                    child: const Text('　週の予定　　　　　　　　　　',
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
                                          builder:(context) => SettingPrivacy()
                                      ));
                                    },
                                    child: const Text('　不規則な予定　　　　　　　　',
                                        style: TextStyle(
                                            color: Colors.black87, fontSize: 20)
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, color: Colors.black87, size: 20,)
                                ],
                              )
                          ),
                        ],
                      )
                    ),
                    const SizedBox(height: 20.0),
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
                                    builder:(context) => SettingNotice()
                                ));
                              },
                              child: const Text('　学習計画を変更　　　　　　　',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 20)
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.black87, size: 20,)
                          ],
                        )
                    ),
                    const SizedBox(height: 20.0),

                  ],
                ),
              )
            ]
        )
    );
  }
}