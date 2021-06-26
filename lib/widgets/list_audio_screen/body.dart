import 'package:english_app/constants/app_constants.dart';
import 'package:english_app/widgets/list_audio_screen/audio_item.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 80,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(kDefaultPadding / 4 * 3),
                      margin: EdgeInsets.only(top: kDefaultPadding * 2),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: Text(
                        "Phát ngẫu nhiên",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .apply(color: Colors.white),
                      ),
                    ),
                    AudioItem()
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
