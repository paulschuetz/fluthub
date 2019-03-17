import 'dart:io';

import 'package:fluthub/network/github_api.dart';
import 'package:http/http.dart';

Future main() async {
  print("fetching latest repositories...");
  var githubApi = GithubApi(client: Client());
  var repos = await githubApi.fetchRepositories();
  repos.forEach((repo) => print(repo.toString()));
  print("finished fetching all ${repos.length} repos.");

  var fluthub = await githubApi
      .loadSourceRepo(repos.singleWhere((repo) => repo.name == "fluthub"));
  print("source: \n" + fluthub.toString());

  print("fetching user 'paulschuetz'");
  var user = await githubApi.fetchUser();
  print(user.toString());
  print("fetched user");

  print("fetching commits for fluthub");
  var commits = await githubApi.fetchCommits("fluthub");
  commits.forEach((commit) => print(commit.toString()));
  print("fetched ${commits.length} commits for fluthub.");

  print("get all branches for inFLUX repo");
  var branches = await githubApi.fetchBranches("inFLUX");
  branches.forEach((branch) => print(branch.toString()));
  print("fetched ${branches.length} branches");

  exit(0);
}
