import 'dart:convert';

import 'package:fluthub/network/dto/commit.dart';
import 'package:fluthub/network/dto/repository.dart';
import 'package:fluthub/network/dto/serializers.dart';
import 'package:fluthub/network/dto/user.dart';
import 'package:fluthub/network/exceptions/github_api_exception.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class GithubApi {
  final String _apiKey = "API-KEY-HERE";
  final Client _client;

  GithubApi({@required Client client})
      : assert(client != null),
        _client = client;

  Future<List<Repository>> fetchRepositories(
      [int page = 1, int resultsPerPage = 20]) async {
    Uri uri = new Uri(
      host: "api.github.com",
      scheme: "https",
      path: "/user/repos",
      queryParameters: {
        "page": "$page",
        "per_page": "$resultsPerPage",
        "sort": "created"
      },
    );

    var response = await _client.get(uri, headers: {
      "Accept": "application/vnd.github.v3+json",
      "Authorization": "Bearer $_apiKey"
    });

    if (response.statusCode != 200)
      throw new GithubApiException(
          actualStatusCode: response.statusCode, expectedStatusCode: 200);

    var repositories =
        deserializeListOf<Repository>(json.decode(response.body));
    return repositories.toList();
  }

  Future<User> fetchUser() async {
    Uri uri = new Uri(
      host: "api.github.com",
      scheme: "https",
      path: "/users/paulschuetz",
    );

    var response = await _client.get(uri, headers: {
      "Accept": "application/vnd.github.v3+json",
      "Authorization": "Bearer $_apiKey"
    });

    if (response.statusCode != 200)
      throw new GithubApiException(
          actualStatusCode: response.statusCode, expectedStatusCode: 200);

    return User.fromJson(response.body);
  }

  Future<Repository> loadSourceRepo(Repository childRepo) async {
    Uri uri = new Uri(
      host: "api.github.com",
      scheme: "https",
      path: "/repos/paulschuetz/${childRepo.name}",
    );

    var response = await _client.get(uri, headers: {
      "Accept": "application/vnd.github.v3+json",
      "Authorization": "Bearer $_apiKey"
    });

    if (response.statusCode != 200)
      throw new GithubApiException(
          actualStatusCode: response.statusCode, expectedStatusCode: 200);

    return Repository.fromJson(response.body);
  }

  Future<List<Commit>> getCommits(Repository repo) async {
    Uri uri = new Uri(
      host: "api.github.com",
      scheme: "https",
      path: "/repos/paulschuetz/${repo.name}/commits",
    );

    var response = await _client.get(uri, headers: {
      "Accept": "application/vnd.github.v3+json",
      "Authorization": "Bearer $_apiKey"
    });

    if (response.statusCode != 200)
      throw new GithubApiException(
          actualStatusCode: response.statusCode, expectedStatusCode: 200);

    var commits = deserializeListOf<Commit>(json.decode(response.body));
    return commits.toList();
  }
}
