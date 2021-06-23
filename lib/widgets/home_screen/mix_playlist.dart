import 'package:flutter/material.dart';
import 'playlist.dart';

class MixPlaylist extends StatefulWidget {
  const MixPlaylist({Key? key}) : super(key: key);

  @override
  State<MixPlaylist> createState() => _MixPlaylistState();
}

/// This is the private State class that goes with MixPlaylist.
class _MixPlaylistState extends State<MixPlaylist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlaylistItem("Mix Playlist #1"),
        PlaylistItem("Mix Playlist #2"),
        PlaylistItem("Mix Playlist #3"),
        PlaylistItem("Mix Playlist #1"),
        PlaylistItem("Mix Playlist #2"),
        PlaylistItem("Mix Playlist #3")
      ],
    );
  }
}
