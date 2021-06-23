import 'package:flutter/material.dart';
import '../../constants/app_constants.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  State<Playlist> createState() => _PlaylistState();
}

/// This is the private State class that goes with Playlist.
class _PlaylistState extends State<Playlist> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              IconWithBackgroud(),
              Text(
                "Tạo playlist",
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
        PlaylistItem("Playlist #1"),
        PlaylistItem("Playlist #2"),
        PlaylistItem("Playlist #3")
      ],
    );
  }
}

class IconWithBackgroud extends StatelessWidget {
  const IconWithBackgroud({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      child: Icon(
        Icons.add_circle_outline,
        color: Colors.white,
      ),
    );
  }
}

class PlaylistItem extends StatelessWidget {
  String playlistName;
  PlaylistItem(this.playlistName);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: kQuinaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Icon(
              Icons.play_circle,
              color: Colors.white,
            ),
          ),
          Text(
            this.playlistName,
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
