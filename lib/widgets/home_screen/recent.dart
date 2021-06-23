import 'package:flutter/material.dart';

class RecentAudio extends StatefulWidget {
  const RecentAudio({Key? key}) : super(key: key);

  @override
  State<RecentAudio> createState() => _RecentAudioState();
}

/// This is the private State class that goes with RecentAudio.
class _RecentAudioState extends State<RecentAudio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AudioItem("Audio file #1"),
        AudioItem("Audio file #2"),
        AudioItem("Audio file #3"),
        AudioItem("Audio file #1"),
        AudioItem("Audio file #2"),
        AudioItem("Audio file #3")
      ],
    );
  }
}

class AudioItem extends StatelessWidget {
  String playlistName;
  AudioItem(this.playlistName);
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
                color: Color.fromRGBO(39, 125, 161, 50),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Icon(
              Icons.audiotrack,
              color: Colors.white,
            ),
          ),
          Text(
            this.playlistName,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
