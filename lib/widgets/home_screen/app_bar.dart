import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

/// This is the private State class that goes with Appbar.
class _AppbarState extends State<Appbar> {
  String _searchText = "";
  Widget _searchBarTitle = new Text(
    'Bài hát, playlist, ...',
    style: TextStyle(fontSize: 18, color: Color.fromRGBO(87, 87, 87, 50)),
    textAlign: TextAlign.left,
  );

  final double height = 30;
  final double width = 30;

  bool isSearching = false;

  void _searchPressed() {
    setState(() {
      if (isSearching) {
        this.isSearching = true;
        this._searchBarTitle = new TextField(
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search),
              hintText: 'Bài hát, playlist, ...'),
        );
      } else {
        this.isSearching = false;
        this._searchBarTitle = new Text(
          'Bài hát, playlist, ...',
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.left,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Container(
            width: width,
            height: width,
            margin: EdgeInsets.all(10),
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        new NetworkImage("https://i.imgur.com/BoN9kdC.png")))),
        Expanded(
          child: Container(
            height: width,
            width: 300.0,
            margin: EdgeInsets.all(10),
            color: Colors.transparent,
            child: new GestureDetector(
              onTap: () {
                this._searchPressed();
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(163, 163, 163, 80),
                      borderRadius: BorderRadius.all(Radius.circular(width))),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 10, top: 3, bottom: 3),
                        child: Icon(Icons.search),
                      ),
                      new Text(
                        'Bài hát, playlist, ...',
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.left,
                      )
                    ],
                  )),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Icon(
            Icons.settings,
          ),
        )
      ],
    );
  }
}
