import 'package:fluthub/network/dto/user.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
            border: Border.all(
                color: Color(0xff24292e), width: 4, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10)),
        child: FutureBuilder<User>(
          future: _githubApi.fetchUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var user = snapshot.data;
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(user.avatarUrl, fit: BoxFit.fitHeight),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(user.name, style: TextStyle(fontWeight: FontWeight.w700),),
                      Text(user.login),
                      Text(user.email),
                      Text("Joined at " + DateTime.parse(user.createdAt).toLocal().toString())
                    ],
                  )

                ],
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
