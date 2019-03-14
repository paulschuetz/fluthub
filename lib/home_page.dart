import 'package:fluthub/network/github_api.dart';
import 'package:fluthub/repository_list.dart';
import 'package:fluthub/user_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GithubApi _githubApi;

  HomePage(GithubApi githubApi)
      : assert(githubApi != null),
        _githubApi = githubApi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          UserBox(_githubApi),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Align(alignment: Alignment.centerLeft, child: Container(child: Text("Repositories", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22, letterSpacing: 0.5, fontStyle: FontStyle.italic),))),
          ),
          Expanded(child: RepositoryList(githubApi: _githubApi))
        ],
      ),
    );
  }
}
