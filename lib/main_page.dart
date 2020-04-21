import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemngtproviderfuture/profile_service.dart';
import 'package:statemngtproviderfuture/profiles_widget.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('List of Profiles'),
            MultiProvider(
                providers: [
                  FutureProvider(
                      create: (_) => ProfileService().getProfiles()
                  ),
                ],
                child: ProfilesWidget()
            )
          ],
        ),
      ),
    );
  }
}
