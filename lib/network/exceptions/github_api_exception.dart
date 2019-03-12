import 'package:meta/meta.dart';

class GithubApiException implements Exception {
  final String message;
  GithubApiException(
      {@required int actualStatusCode, int expectedStatusCode = 200})
      : message =
            "Github API returned $actualStatusCode instead of $expectedStatusCode.";
}
