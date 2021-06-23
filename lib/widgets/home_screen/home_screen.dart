import 'package:english_app/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'library.dart';
import 'playlist.dart';
import 'mix_playlist.dart';
import 'recent.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

/// This is the private State class that goes with HomeWidget.
class _HomeWidgetState extends State<HomeWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _indexSelectedTabar = 0;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: <Widget>[
          Appbar(),
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Thư viện",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Library(),
          // Row(
          //   children: [Text("Playlists"), Text("Recent lists")],
          // )

          Container(
              child: Column(
            children: [
              TabBar(
                indicatorColor: Theme.of(context).primaryColor,
                controller: _tabController,
                labelColor: Colors.red,
                onTap: (index) {
                  this.setState(() {
                    _indexSelectedTabar = index;
                  });
                },
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      "Playlist",
                      style: _indexSelectedTabar == 0
                          ? Theme.of(context)
                              .textTheme
                              .headline5!
                              .apply(color: kPrimaryColor)
                          : Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Gần đây",
                      style: _indexSelectedTabar == 1
                          ? Theme.of(context)
                              .textTheme
                              .headline5!
                              .apply(color: kPrimaryColor)
                          : Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Mix",
                      style: _indexSelectedTabar == 2
                          ? Theme.of(context)
                              .textTheme
                              .headline5!
                              .apply(color: kPrimaryColor)
                          : Theme.of(context).textTheme.headline6,
                    ),
                  )
                ],
              ),
              Center(
                  child: [
                Playlist(),
                RecentAudio(),
                MixPlaylist(),
              ][_tabController.index])
            ],
          ))
        ],
      ),
    );
  }
}
