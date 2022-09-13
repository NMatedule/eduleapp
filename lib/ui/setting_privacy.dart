import 'package:flutter/material.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';

class SettingPrivacy extends StatefulWidget {
  const SettingPrivacy({Key? key}) : super(key: key);

  @override
  State<SettingPrivacy> createState() => _SettingPrivacyState();
}

class _SettingPrivacyState extends State<SettingPrivacy> {
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
              width: 250,
              alignment: FractionalOffset.center, // <
              child: Text('プライバシー・セキュリティ',
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
                    const SizedBox(height: 300.0),
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
                                    builder:(context) => SettingPrivacy()
                                ));
                              },
                              child: const Text('　パスワード　　　　　　　　　',
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
                              child: const Text('　2段階認証 　　　　　　　　　',
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
                              child: const Text('　分析する情報を選択　　　　　',
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
                              child: const Text('　プライバシーポリシー　　　　',
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