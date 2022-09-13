import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';
import 'home_bottomnavbar.dart';

class RegisterThird extends StatefulWidget {
  const RegisterThird({Key? key}) : super(key: key);

  @override
  State<RegisterThird> createState() => _RegisterThirdState();
}

class _RegisterThirdState extends State<RegisterThird> {
  bool _isObscure = true;
  bool rules = false;
  bool policy = false;

  final _formkey = GlobalKey<FormState>();

  var test = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);}),
        title: Text('登録を完了する'),
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
                          const SizedBox(height: 350.0),
                          Text('下記を確認                                                         ',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 18),
                          ),
                          CheckboxListTile(
                            title: Text('利用規約',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  letterSpacing: 0.5),
                            ),
                            value: rules,
                            onChanged: (value) {
                              setState(() {
                                rules = value!;
                              });
                            },
                          ),
                          CheckboxListTile(
                            title: Text('プライバシーポリシー',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  letterSpacing: 0.5),
                            ),
                            value: policy,
                            onChanged: (value) {
                              setState(() {
                                policy = value!;
                              });
                            },
                          ),
                          const SizedBox(height: 12.0),
                          Text('アカウントを連携                                              ',
                            style: TextStyle(
                                color: Colors.black87, fontSize: 18),
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
                                MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {},
                              child: const Text('                   　同意して登録　                    ',
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