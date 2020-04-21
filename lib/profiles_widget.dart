import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemngtproviderfuture/profile.dart';
import 'package:statemngtproviderfuture/profile_service.dart';

class ProfilesWidget extends StatefulWidget {
  @override
  _ProfilesWidgetState createState() => _ProfilesWidgetState();
}

class _ProfilesWidgetState extends State<ProfilesWidget> {
  @override
  Widget build(BuildContext context) {
    var _profiles = Provider.of<List<Profile>>(context);
    if(_profiles == null){
      return Center(
        child:Container(child: CircularProgressIndicator()),
      );
    }
    else{
      return Container(
        child:Column(
          children: <Widget>[
            ListView.builder(
                shrinkWrap:true,
                padding: EdgeInsets.all(10.0),
                itemCount: _profiles.length ?? 0,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    color: Colors.blue.withOpacity(0.3),
                    child: ListTile(
                      leading:Icon(Icons.person, size:40),
                      title: Text(_profiles[index].name),
                      subtitle: Text(_profiles[index].timeStamp.toString()),
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  );
                }
            ),
          ],
        )
      );
    }
  }
}
