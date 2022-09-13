import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:edule/firebase_options.dart';
import 'login_screen.dart';
import 'register_second.dart';

class RegisterFirst extends StatefulWidget {
  const RegisterFirst({Key? key}) : super(key: key);

  @override
  State<RegisterFirst> createState() => _RegisterFirstState();
}

class _RegisterFirstState extends State<RegisterFirst> {
  bool _isObscure = true;

  final _formkey = GlobalKey<FormState>();

  var test = false;
  bool isChecked = false;

  // 入力されたニックネーム
  String newUserName = "";
  // 入力されたメールアドレス
  String newUserEmail = "";
  // 入力されたパスワード
  String newUserPassword = "";
  // 登録・ログインに関する情報を表示
  String infoText = "";

  // FireStoreにユーザー情報を登録する関数を定義
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> Register() {
    // 上で定義したメンバ変数を格納すると、usersコレクションに、
    // メールアドレスとパスワードも保存できる。
    return users
        .add({
      'name': newUserName,
      'email': newUserEmail,
      'password': newUserPassword
    })
        .then((value) => print("新規登録に成功"))
        .catchError((error) => print("新規登録に失敗しました!: $error"));
  }

  // メールアドレスとパスワードを登録する関数を定義
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> createAuth() async {
    UserCredential result = await auth.createUserWithEmailAndPassword(
      email: newUserEmail,
      password: newUserPassword,
    );
    final User user = result.user!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
          }),
          title: Text('ユーザー登録'),
        ),
        body: SafeArea(
            child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: constraints.maxHeight),
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 200.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'ニックネーム(ユーザー名)',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Colors.black87,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    newUserName = value;
                                  });
                                },
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'メールアドレス',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Colors.black87,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    newUserEmail = value;
                                  });
                                },
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'パスワード',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Colors.black87,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                // パスワードが見えないようにする
                                obscureText: true,
                                onChanged: (String value) {
                                  setState(() {
                                    newUserPassword = value;
                                  });
                                },
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'パスワード(確認用)',
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                      color: Colors.black87,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              CheckboxListTile(
                                title: Text('パスワードを表示',
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
                            ]
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
                        onPressed: () async {
                          try {
                            // FireStoreにユーザー情報を登録する関数
                            Register();
                            // メール/パスワードでユーザー登録
                            createAuth();
                            // 登録したユーザー情報
                          } catch (e) {
                            // 登録に失敗した場合
                            setState(() {
                              infoText = "登録NG:${e.toString()}";
                            });
                          }
                        },
                        child: const Text('　　次へ進む　　                    ',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                    ],
                  ),
                  ),
                  ],
                  )
                  ),
                  ),
                  );
                }
            )
        )
    );
  }
}
