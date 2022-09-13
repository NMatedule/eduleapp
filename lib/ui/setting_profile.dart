import 'package:flutter/material.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';

class SettingProfile extends StatefulWidget {
  const SettingProfile({Key? key}) : super(key: key);

  @override
  State<SettingProfile> createState() => _SettingProfileState();
}

class _SettingProfileState extends State<SettingProfile> {
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
              width: 150,
              alignment: FractionalOffset.center, // <
              child: Text('プロフィール',
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
                    const SizedBox(height: 50.0),
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
                                    builder:(context) => SettingProfile()
                                ));
                              },
                              child: const Text('　ニックネーム　　　　　　　　',
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
                                    builder:(context) => SettingProfile()
                                ));
                              },
                              child: const Text('　メールアドレス　　　　　　　',
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
                                    builder:(context) => SettingProfile()
                                ));
                              },
                              child: const Text('　パスワード　 　　　　　　　',
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
                                    builder:(context) => SettingProfile()
                                ));
                              },
                              child: const Text('　学年・職業　　　　　　　　　',
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
                                    builder:(context) => SettingProfile()
                                ));
                              },
                              child: const Text('　その他のユーザー情報　　　　',
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
                                    builder:(context) => SettingProfile()
                                ));
                              },
                              child: const Text('　外部アカウント連携　　　　　',
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
                                  builder:(context) => SettingProfile()
                              ));
                            },
                            child: const Text('　アカウントを削除　　　　　　',
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
                              builder:(context) => SettingProfile()
                          ));
                        },
                        child: const Text('　ログアウト　　　　　　　　　',
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