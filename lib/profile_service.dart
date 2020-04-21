import 'dart:async';
import 'package:statemngtproviderfuture/profile.dart';

class ProfileService{

  List<Profile> _profiles;

  Future<List<Profile>> get profiles async {
    return await getProfiles();
  }

  ProfileService(){
    //getProfiles();
  }

  Future<List<Profile>> getProfiles() async {

    print('getProfiles');

    await new Future.delayed(const Duration(seconds: 2));

    _profiles = [
      Profile(
        id: '1',
        name: 'Junny Cheong',
        score: 5.00,
        scoreReason:'',
        scoreDescription:'',
        health: true,
        timeStamp: DateTime.now(),
        imageNetworkPath: 'assets/images/jun.jpg',
      ),
      Profile(
        id: '2',
        name: 'John Tan',
        score: 5.00,
        scoreReason:'',
        scoreDescription:'',
        health: true,
        timeStamp: DateTime.now(),
        imageNetworkPath: 'assets/images/john.jpg',
      ),
    ];

    return _profiles;
  }
}