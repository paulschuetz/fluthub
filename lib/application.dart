import 'dart:io';

import 'package:fluthub/network/github_api.dart';
import 'package:http/http.dart';

Future main() async {
  print("fetching latest repositories...");
  var githubApi = GithubApi(client: Client());
  var repos = await githubApi.fetchRepositories();
  repos.forEach((repo) => print(repo.toString()));
  print("finished fetching all ${repos.length} repos.");

  var source = githubApi
      .loadSourceRepo(repos.singleWhere((repo) => repo.name == "inFLUX"));
  print("source: \n" + source.toString());

  print("fetching user 'paulschuetz'");
  var user = await githubApi.fetchUser();
  print(user.toString());
  print("fetched user");

  exit(0);
}
