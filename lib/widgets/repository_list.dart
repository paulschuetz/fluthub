import 'package:fluthub/network/dto/repository.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:fluthub/widgets/repository_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RepositoryList extends StatelessWidget {
  final GithubApi _githubApi;

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
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: RepositoryItem(
                    repository: repo,
                    githubApi: _githubApi,
                  ),
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
