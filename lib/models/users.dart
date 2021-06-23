class Users {
  String username;
  String avatar;
  String url;
  double score;

  Users({this.username, this.avatar, this.url, this.score});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        username: json['login'],
        avatar: json['avatar_url'],
        url: json['url'],
        score: json['score']);
  }
}
