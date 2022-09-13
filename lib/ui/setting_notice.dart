import 'package:flutter/material.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';
import 'package:flutter/cupertino.dart';


class SettingNotice extends StatefulWidget {
  const SettingNotice({Key? key}) : super(key: key);

  @override
  State<SettingNotice> createState() => _SettingNoticeState();
}

class _SettingNoticeState extends State<SettingNotice> {
  bool _isObscure = true;

  final _formkey = GlobalKey<FormState>();

  var test = false;
  bool isChecked = false;

  bool _notice_active = false;
  void _notice_Switch(bool e) => setState(() => _notice_active = e);

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
              width: 100,
              alignment: FractionalOffset.center, // <
              child: Text('通知',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black87, fontSize: 18),
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
                    const SizedBox(height: 500.0),
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
                          title: Text('通知(ON/OFF)',
                              style: TextStyle(
                              color: Colors.black87, fontSize: 20)),
                          trailing: CupertinoSwitch(
                            value: _notice_active,
                            onChanged: (bool value) {
                              setState(() {
                                _notice_active = value;
                              });
                            },
                          ),
                        ),
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
                              child: const Text(' 詳細設定　　　　　　　　　　',
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