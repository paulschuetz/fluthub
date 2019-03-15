import 'package:fluthub/network/dto/user.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class UserBox extends StatefulWidget {
  final GithubApi _githubApi;

  UserBox(this._githubApi);

  @override
  _UserBoxState createState() => _UserBoxState(_githubApi);
}

class _UserBoxState extends State<UserBox> {
  final GithubApi _githubApi;
  _UserBoxState(this._githubApi);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: FutureBuilder<User>(
          future: _githubApi.fetchUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var user = snapshot.data;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child:
                          Image.network(user.avatarUrl, fit: BoxFit.fitHeight),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          user.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.5),
                        ),
                        Text(
                          user.login,
                          style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                        ),
                        Text(user.email),
                        Text(
                            "Joined ${timeago.format(DateTime.parse(user.createdAt))}")
                      ],
                    )
                  ],
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
