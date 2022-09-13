import 'package:flutter/material.dart';
import 'register_frist_screen.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObscure = true;

  final _formkey = GlobalKey<FormState>();

  var test = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          Container(
                            padding: EdgeInsets.all(100),
                            child:Text('Edule',
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black87, fontSize: 40),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child:Text(''),
                          ),
                          TextField(
                              controller: null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                labelText: 'ユーザー名',
                              ),
                            ),
                            const SizedBox(height: 24.0),
                          TextField(
                            controller: null, // Controller実装必要
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              labelText: 'パスワード',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(3),
                            child:Text(''),
                          ),
                          CheckboxListTile(
                            title: Text('パスワードを保存する',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  letterSpacing: 0.5),
                            ),
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
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
                                      builder:(context) => BottomNavbar()
                                  ));
                                },
                                child: const Text('                   　　ログイン　　                    ',
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
                                    builder:(context) => RegisterFirst()
                                  ));
                                },
                                child: const Text('                   新規ユーザー登録                    ',
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