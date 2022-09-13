import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';
import 'register_third.dart';

class RegisterSecond extends StatefulWidget {
  const RegisterSecond({Key? key}) : super(key: key);

  @override
  State<RegisterSecond> createState() => _RegisterSecondState();
}

class _RegisterSecondState extends State<RegisterSecond> {
  bool _isObscure = true;
  int genderAns = 0;
  int position = 13;
  bool purpose_1 = false;
  bool purpose_2 = false;
  bool purpose_3 = false;
  bool purpose_4 = false;
  bool purpose_5 = false;

  final _formkey = GlobalKey<FormState>();

  var test = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);}),
        title: Text('基本情報を登録'),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.help_outline), onPressed: () {
              showDialog(
                context: context,
                builder: (childContext) {
                  return SimpleDialog(
                    backgroundColor: Colors.lightBlueAccent,
                    title: Text("個人情報の取り扱いについて"),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    children: <Widget> [
                      SimpleDialogOption(
                        child: Text("プライバシーポリシー"),
                      ),
                    ],
                  );
                }
              );
          },
          )
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 100.0),
                          Text('性別                                                         ',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 18),
                          ),

                          DropdownButton(
                              //4
                            items: const [
                                //5
                              DropdownMenuItem(
                                child: Text('選択しない'),
                                value: 0,
                              ),
                              DropdownMenuItem(
                                child: Text('男性'),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text('女性'),
                                value: 2,
                              ),
                            ],
                            //6
                            onChanged: (int? value) {
                              setState(() {
                                genderAns = value!;
                              });
                            }, //7
                            value: genderAns,
                          ),
                          const SizedBox(height: 12.0),
                          Text('学年・職業                                              ',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 18),
                          ),
                          DropdownButton(
                            //4
                            items: const [
                              //5
                              DropdownMenuItem(
                                child: Text('中学1年生'),
                                value: 13,
                              ),
                              DropdownMenuItem(
                                child: Text('中学2年生'),
                                value: 14,
                              ),
                              DropdownMenuItem(
                                child: Text('中学3年生'),
                                value: 15,
                              ),
                              DropdownMenuItem(
                                child: Text('高校1年生'),
                                value: 16,
                              ),
                              DropdownMenuItem(
                                child: Text('高校2年生'),
                                value: 17,
                              ),
                              DropdownMenuItem(
                                child: Text('高校3年生'),
                                value: 18,
                              ),
                              DropdownMenuItem(
                                child: Text('大学生'),
                                value: 19,
                              ),
                              DropdownMenuItem(
                                child: Text('社会人'),
                                value: 20,
                              ),
                              DropdownMenuItem(
                                child: Text('その他'),
                                value: 21,
                              ),
                            ],
                            //6
                            onChanged: (int? value) {
                              setState(() {
                                position = value!;
                              });
                            },
                            //7
                            value: position,
                          ),
                          const SizedBox(height: 12.0),
                          Text('目的                                                         ',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 18),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CheckboxListTile(
                                  title: Text('受験合格',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                      letterSpacing: 0.5),
                                  ),
                                  value: purpose_1,
                                  onChanged: (value) {
                                    setState(() {
                                      purpose_1 = value!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  title: Text('定期テスト・成績アップ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                        letterSpacing: 0.5),
                                  ),
                                  value: purpose_2,
                                  onChanged: (value) {
                                    setState(() {
                                      purpose_2 = value!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  title: Text('資格取得',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                        letterSpacing: 0.5),
                                  ),
                                  value: purpose_3,
                                  onChanged: (value) {
                                    setState(() {
                                      purpose_3 = value!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  title: Text('スキルアップ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                        letterSpacing: 0.5),
                                  ),
                                  value: purpose_4,
                                  onChanged: (value) {
                                    setState(() {
                                      purpose_4 = value!;
                                    });
                                  },
                                ),
                                CheckboxListTile(
                                  title: Text('その他',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black87,
                                        letterSpacing: 0.5),
                                  ),
                                  value: purpose_5,
                                  onChanged: (value) {
                                    setState(() {
                                      purpose_5 = value!;
                                    });
                                  },
                                ),
                              ]
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    builder:(context) => RegisterThird()
                                ));
                              },
                                child: const Text('                   　　次へ進む　　                    ',
                                            style: TextStyle(fontWeight: FontWeight.bold,
                                            color: Colors.white, fontSize: 18),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}