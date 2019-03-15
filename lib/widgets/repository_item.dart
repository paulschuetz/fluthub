import 'package:fluthub/network/dto/repository.dart';
import 'package:fluthub/network/github_api.dart';
import 'package:fluthub/widgets/repository_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RepositoryItem extends StatelessWidget {
  final Repository _repository;
  final GithubApi _githubApi;

  const RepositoryItem(
      {Key key, @required Repository repository, @required GithubApi githubApi})
      : this._githubApi = githubApi,
        this._repository = repository,
        super(key: key);

  final _descriptionTextStyle =
      const TextStyle(fontSize: 16, letterSpacing: 0.5);

  final _detailsTextStyle = const TextStyle(
      fontSize: 15, letterSpacing: 0.25, fontWeight: FontWeight.w400);

  final _detailsTextAlignment = const AlignmentDirectional(0, 0.7);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: HSLColor.fromAHSL(1, 207, 0.7, 0.26).toColor(),
                    width: 1.5))),
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_repository.name,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      letterSpacing: 2)),
              _repository.fork
                  ? FutureBuilder<Repository>(
                      future: _githubApi.loadSourceRepo(_repository),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(
                            "Forked from ${snapshot.data.source.fullName}",
                            style: _descriptionTextStyle,
                          );
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    )
                  : _repository.description != null
                      ? Expanded(
                          child: Text(
                          _repository.description,
                          style: _descriptionTextStyle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ))
                      : Text(
                          "No description provided",
                          style: _descriptionTextStyle,
                        ),
              Spacer(),
              Container(
                  height: 30,
                  padding: EdgeInsetsDirectional.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.robot,
                        size: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      Align(
                        alignment: _detailsTextAlignment,
                        child: Text(
                          "${_repository.language}",
                          style: _detailsTextStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      _repository.stargazersCount > 0
                          ? Row(
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.star,
                                  color: Colors.black,
                                  size: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                ),
                                Align(
                                  alignment: _detailsTextAlignment,
                                  child: Text(
                                    "${_repository.stargazersCount}",
                                    style: _detailsTextStyle,
                                  ),
                                )
                              ],
                            )
                          : Container(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      _repository.watchersCount > 0
                          ? Row(
                              children: <Widget>[
                                Icon(
                                  FontAwesomeIcons.eye,
                                  size: 18,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                ),
                                Align(
                                  alignment: _detailsTextAlignment,
                                  child: Text("${_repository.watchersCount}",
                                      style: _detailsTextStyle),
                                )
                              ],
                            )
                          : Container(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      _repository.forksCount > 0
                          ? Row(
                              children: <Widget>[
                                Icon(FontAwesomeIcons.git),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                ),
                                Align(
                                  alignment: _detailsTextAlignment,
                                  child: Text("${_repository.forksCount}",
                                      style: _detailsTextStyle),
                                )
                              ],
                            )
                          : Container()
                    ],
                  )),
            ],
          ),
        ),
      ),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RepositoryDetailPage(
                  githubApi: _githubApi, repository: _repository))),
    );
  }
}
