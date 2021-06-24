import 'package:english_app/constants/app_constants.dart';
import 'package:english_app/widgets/home_screen/playlist.dart';
import 'package:flutter/material.dart';

class AudioItem extends StatelessWidget {
  const AudioItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding,
      ),
      child: Row(
        children: [
          IconWithBackgroud(),
          Container(
              child: Text(
            "Audio file 1",
            style: Theme.of(context).textTheme.headline6,
          )),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 2),
                  alignment: Alignment.topRight,
                  child: Icon(Icons.menu)))
        ],
      ),
    );
  }
}
