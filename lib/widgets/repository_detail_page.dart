import 'package:fluthub/network/dto/repository.dart';
import 'package:fluthub/network/github_api.dart';
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
    return Material(
      child: Column(
        children: <Widget>[
          RepositoryItem(
            repository: _repository,
            githubApi: _githubApi,
          )
        ],
      ),
    );
  }
}
