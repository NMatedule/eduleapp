import 'package:flutter/material.dart';
import 'Setting_main.dart';
import 'Hex_tools.dart';
import 'setting_profile.dart';
import 'manage_subject.dart';
import 'manage_plan.dart';
import 'news.dart';
import 'help_home.dart';

class HomeCustomize extends StatefulWidget {
  const HomeCustomize({Key? key}) : super(key: key);

  @override
  State<HomeCustomize> createState() => _HomeCustomizeState();
}

class _HomeCustomizeState extends State<HomeCustomize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leadingWidth: 85,
        leading: Container(
        alignment: FractionalOffset.center, // <
        child: Text('Edule',
        style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.black87, fontSize: 20),
    ),
    ),
          actions: <Widget> [
            Container(
              width: 150,
              alignment: FractionalOffset.center, // <
              child: Text('カスタマイズ',
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black87, fontSize: 20),
              ),
            ),
          ],
    backgroundColor: HexColor('DFFDFF'),
    elevation: 1,
    ),
    body: Container(
    child: Column(
    children: <Widget> [
    const SizedBox(height: 35.0),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 130,
    decoration: BoxDecoration(
    color: HexColor('F1F1F1'),
    border: Border.all(width: 1),
    borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(5),
    child: Row(
    children: <Widget> [
    Container(
    width: 15,
    ),
    Container(
    width: 70,
    height: 70,
    decoration: const BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.black12,
    ),
    ),
    Container(
    width: 30,
    height: 30,
    ),
    Text('Username',
    style: TextStyle(fontWeight: FontWeight.bold,
    color: Colors.black87, fontSize: 25),
    ),
    ],
    )
    )
    ]
    ),
    const SizedBox(height: 20.0),
    Row(
    children: <Widget> [
    Container(
    width: 15,
    ),
    Container(
    width: 180,
    height: 50,
    decoration: BoxDecoration(
    color: HexColor('F1F1F1'),
    border: Border.all(width: 1),
    borderRadius: BorderRadius.circular(10),
    ),
      child: TextButton.icon(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder:(context) => SettingProfile()
          ));
        },
        icon: const Icon(Icons.person, color: Colors.black87, size: 25,),
        label: const Text('プロフィール',
          style: TextStyle(
              color: Colors.black87, fontSize: 18),
        ),
      ),
    ),
    Container(
    width: 20,
    ),
    Container(
    width: 180,
    height: 50,
    decoration: BoxDecoration(
    color: HexColor('F1F1F1'),
    border: Border.all(width: 1),
    borderRadius: BorderRadius.circular(10),
    ),
    child: TextButton.icon(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute(
    builder:(context) => SettingMain()
    ));
    },
    icon: const Icon(Icons.settings, color: Colors.black87, size: 25,),
    label: const Text('設定',
    style: TextStyle(
    color: Colors.black87, fontSize: 18),
    ),
    ),
    )

    ],
    ),
    const SizedBox(height: 50.0),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 2,
    color: Colors.black54,
    )
    ],
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
      Container(
        width: 380,
        height: 70,
        alignment: Alignment.centerLeft,
        child: TextButton.icon(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder:(context) => ManageSubject()
            ));
          },
          icon: const Icon(Icons.import_contacts, color: Colors.black87, size: 40,),
          label: const Text('　教材を管理　　　　　　　　　　',
            style: TextStyle(
                color: Colors.black87, fontSize: 20),
          ),
        ),
      ),
    ]
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 2,
    color: Colors.black54,
    )
    ],
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 70,
      alignment: Alignment.centerLeft,
    child: TextButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
            builder:(context) => ManagePlan()
        ));
      },
      icon: const Icon(Icons.edit_calendar, color: Colors.black87, size: 40,),
      label: const Text('　予定を管理　　　　　　　　　　　　　　',
        style: TextStyle(
            color: Colors.black87, fontSize: 20),
      ),
    ),
    )
    ]
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 2,
    color: Colors.black54,
    )
    ],
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 70,
      alignment: Alignment.centerLeft,
    child: TextButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
            builder:(context) => News()
        ));
      },
      icon: const Icon(Icons.notifications_none, color: Colors.black87, size: 40,),
      label: const Text('　お知らせ　　　　　　　　　　　　　　　　　　　',
        style: TextStyle(
            color: Colors.black87, fontSize: 20),
      ),
    ),
    )
    ]
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 2,
    color: Colors.black54,
    )
    ],
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 70,
      alignment: Alignment.centerLeft,
    child: TextButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
            builder:(context) => HelpHome()
        ));
      },
      icon: const Icon(Icons.help_outline, color: Colors.black87, size: 40,),
      label: const Text('　ヘルプ・お問い合わせ　　　　　　　　　',
        style: TextStyle(
            color: Colors.black87, fontSize: 20),
      ),
    ),
    )
    ]
    ),
    Row(
    children: <Widget>[
    Container(
    width: 15,
    ),
    Container(
    width: 380,
    height: 2,
    color: Colors.black54,
    )
    ],
    ),

    ]
    )
    )
    );
  }
}