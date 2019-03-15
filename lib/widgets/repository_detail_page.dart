import 'package:fluthub/network/dto/commit.dart';
import 'package:fluthub/network/dto/repository.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:fluthub/widgets/commit_item.dart';
import 'package:fluthub/widgets/repository_item.dart';
import 'package:flutter/material.dart';

class RepositoryDetailPage extends StatelessWidget {
  final GithubApi _githubApi;
  final Repository _repository;

  const RepositoryDetailPage(
      {Key key, GithubApi githubApi, Repository repository})
      : _githubApi = githubApi,
        _repository = repository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: new Text("Fluthub"),
          centerTitle: true,
          backgroundColor: Color(0xff24292e)),
      body: Material(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: RepositoryItem(
                repository: _repository,
                githubApi: _githubApi,
              ),
            ),
            FutureBuilder<List<Commit>>(
              future: _githubApi.getCommits(_repository),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          var commit = snapshot.data[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CommitItem(commit: commit),
                          );
                        }),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
