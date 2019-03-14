import 'package:fluthub/network/dto/repository.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:fluthub/repository_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RepositoryList extends StatelessWidget {
  final GithubApi _githubApi;

  final _colors = const [
    Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.blueAccent,
    Colors.greenAccent
  ];

  const RepositoryList({Key key, GithubApi githubApi})
      : _githubApi = githubApi,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Repository>>(
      future: _githubApi.fetchRepositories(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                var repo = snapshot.data[index];
                return RepositoryItem(
                  color: _colors[index % 5],
                  repository: repo,
                  githubApi: _githubApi,
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
