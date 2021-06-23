import 'package:english_app/widgets/list_audio_screen/list_audio_screen.dart';
import 'package:flutter/material.dart';
import '../../constants/app_constants.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

/// This is the private State class that goes with Library.
class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 210.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          LibraryColumn(),
          LibraryColumn(),
          LibraryColumn(),
          LibraryColumn(),
        ],
      ),
    );
  }
}

class LibraryColumn extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          LibraryItem(Icons.library_music, "Bài hát", kSecondaryColor),
          LibraryItem(Icons.library_music, "Thư mục 1", kQuaternaryColor)
        ],
      ),
    );
  }
}

class LibraryItem extends StatelessWidget {
  final IconData icon;
  final String iconContent;
  final Color backgoundItemColor;

  LibraryItem(this.icon, this.iconContent, this.backgoundItemColor);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ListAuidioScreen()));
      },
      child: Container(
        width: 140,
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor,
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 1), // changes position of shadow
              )
            ]),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: this.backgoundItemColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  )),
              child: Icon(
                this.icon,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(this.iconContent.toString()),
            )
          ],
        ),
      ),
    );
  }
}
