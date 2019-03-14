import 'package:fluthub/network/github_api.dart';
import 'package:fluthub/repository_list.dart';
import 'package:fluthub/user_box.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final GithubApi _githubApi;

  Home(GithubApi githubApi)
      : assert(githubApi != null),
        _githubApi = githubApi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          UserBox(_githubApi),
          Expanded(child: RepositoryList(githubApi: _githubApi))
        ],
      ),
    );
  }
}
