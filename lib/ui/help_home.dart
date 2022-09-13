import 'package:flutter/material.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';
import 'setting_help.dart';
import 'setting_help.dart';
import 'help_support.dart';

class HelpHome extends StatefulWidget {
  const HelpHome({Key? key}) : super(key: key);

  @override
  State<HelpHome> createState() => _HelpHomeState();
}

class _HelpHomeState extends State<HelpHome> {
  bool _isObscure = true;

  final _formkey = GlobalKey<FormState>();

  var test = false;
  bool isChecked = false;

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
              width: 230,
              alignment: FractionalOffset.center, // <
              child: Text('使い方・お問い合わせ',
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
                    const SizedBox(height: 500.0),
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
                                    builder:(context) => SettingHelp()
                                ));
                              },
                              child: const Text('　ヘルプ　　　　　　　　　　　',
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
                                    builder:(context) => HelpSupport()
                                ));
                              },
                              child: const Text('　お問い合わせ　　　　　　　　',
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