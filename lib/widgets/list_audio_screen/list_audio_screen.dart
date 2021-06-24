import 'package:english_app/constants/app_constants.dart';
import 'package:english_app/widgets/list_audio_screen/body.dart';
import 'package:flutter/material.dart';

class ListAuidioScreen extends StatefulWidget {
  const ListAuidioScreen({Key? key}) : super(key: key);

  @override
  _ListAuidioScreenState createState() => _ListAuidioScreenState();
}

class _ListAuidioScreenState extends State<ListAuidioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Container(
            // decoration: BoxDecoration(color: Colors.white),
            margin: EdgeInsets.only(left: 1),
            child: Text(
              "Tên danh sách phát (1)",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
        actions: [
          Icon(Icons.settings),
          SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      body: Body(),
    );
  }
}
