class Profile{
  String id;
  String name;
  double score;
  String scoreReason;
  String scoreDescription;
  bool health;
  DateTime timeStamp;
  String imageNetworkPath;

  Profile({
    this.id,
    this.name,
    this.score,
    this.scoreReason,
    this.scoreDescription,
    this.health,
    this.timeStamp,
    this.imageNetworkPath
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: '',
      name: json['FULL_NAME'],
      score: double.parse(json['SCORE']),
      scoreReason: json['SCORE_REASON'],
      scoreDescription: json['SCORE_DESC'],
      health: json['healthy'].toString().toLowerCase() == 'true',
      timeStamp: DateTime.parse(json['timestamp']),
      imageNetworkPath: '',
    );
  }
}