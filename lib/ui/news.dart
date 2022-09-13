import 'package:flutter/material.dart';
import 'home_bottomnavbar.dart';
import 'Hex_tools.dart';
import 'setting_userinfo.dart';
import 'setting_profile.dart';
import 'setting_notice.dart';
import 'setting_privacy.dart';
import 'setting_help.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
              width: 120,
              alignment: FractionalOffset.center, // <
              child: Text('お知らせ',
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
                    const SizedBox(height: 20.0),
                    Text('　運営からの情報が表示されます　　　　　　　　',
                        style: TextStyle(
                            color: Colors.black87, fontSize: 18)
                    ),
                    const SizedBox(height: 30.0),
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