import 'package:fluthub/models/branch_model.dart';
import 'package:fluthub/network/dto/commit.dart';
import 'package:fluthub/network/dto/repository.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:fluthub/widgets/branch_swiper.dart';
import 'package:fluthub/widgets/commit_item.dart';
import 'package:fluthub/widgets/repository_item.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class RepositoryDetailPage extends StatelessWidget {
  final GithubApi _githubApi;
  final Repository _repository;
  final BranchModel _branchModel;

  RepositoryDetailPage({Key key, GithubApi githubApi, Repository repository})
      : _githubApi = githubApi,
        _repository = repository,
        _branchModel =
            BranchModel(githubApi: githubApi, repositoryName: repository.name),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 75,
                    child: ScopedModel<BranchModel>(
                        model: _branchModel,
                        child: BranchSwiper(branchModel: _branchModel)),
                  ),
                  ScopedModel<BranchModel>(
                      model: _branchModel,
                      child: ScopedModelDescendant<BranchModel>(
                          builder: (context, widget, model) {
                        if (model.state == ModelState.loaded) {
                          return FutureBuilder<List<Commit>>(
                            future: _githubApi.fetchCommits(_repository.name,
                                branchName: model.currentBranch.name),
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
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          );
                        } else {
                          return Container();
                        }
                      }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
