library repository;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/license.dart';
import 'package:fluthub/network/dto/owner.dart';
import 'package:fluthub/network/dto/permissions.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'repository.g.dart';

abstract class Repository implements Built<Repository, RepositoryBuilder> {
  Repository._();

  factory Repository([updates(RepositoryBuilder b)]) = _$Repository;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'node_id')
  String get nodeId;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'full_name')
  String get fullName;
  @BuiltValueField(wireName: 'private')
  bool get private;
  @BuiltValueField(wireName: 'owner')
  Owner get owner;
  @BuiltValueField(wireName: 'html_url')
  String get htmlUrl;
  @BuiltValueField(wireName: 'description')
  @nullable
  String get description;
  @BuiltValueField(wireName: 'fork')
  bool get fork;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'forks_url')
  String get forksUrl;
  @BuiltValueField(wireName: 'keys_url')
  String get keysUrl;
  @BuiltValueField(wireName: 'collaborators_url')
  String get collaboratorsUrl;
  @BuiltValueField(wireName: 'teams_url')
  String get teamsUrl;
  @BuiltValueField(wireName: 'hooks_url')
  String get hooksUrl;
  @BuiltValueField(wireName: 'issue_events_url')
  String get issueEventsUrl;
  @BuiltValueField(wireName: 'events_url')
  String get eventsUrl;
  @BuiltValueField(wireName: 'assignees_url')
  String get assigneesUrl;
  @BuiltValueField(wireName: 'branches_url')
  String get branchesUrl;
  @BuiltValueField(wireName: 'tags_url')
  String get tagsUrl;
  @BuiltValueField(wireName: 'blobs_url')
  String get blobsUrl;
  @BuiltValueField(wireName: 'git_tags_url')
  String get gitTagsUrl;
  @BuiltValueField(wireName: 'git_refs_url')
  String get gitRefsUrl;
  @BuiltValueField(wireName: 'trees_url')
  String get treesUrl;
  @BuiltValueField(wireName: 'statuses_url')
  String get statusesUrl;
  @BuiltValueField(wireName: 'languages_url')
  String get languagesUrl;
  @BuiltValueField(wireName: 'stargazers_url')
  String get stargazersUrl;
  @BuiltValueField(wireName: 'contributors_url')
  String get contributorsUrl;
  @BuiltValueField(wireName: 'subscribers_url')
  String get subscribersUrl;
  @BuiltValueField(wireName: 'subscription_url')
  String get subscriptionUrl;
  @BuiltValueField(wireName: 'commits_url')
  String get commitsUrl;
  @BuiltValueField(wireName: 'git_commits_url')
  String get gitCommitsUrl;
  @BuiltValueField(wireName: 'comments_url')
  String get commentsUrl;
  @BuiltValueField(wireName: 'issue_comment_url')
  String get issueCommentUrl;
  @BuiltValueField(wireName: 'issues_url')
  String get issuesUrl;
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;
  @BuiltValueField(wireName: 'pushed_at')
  String get pushedAt;
  @BuiltValueField(wireName: 'homepage')
  @nullable
  String get homepage;
  @BuiltValueField(wireName: 'size')
  int get size;
  @BuiltValueField(wireName: 'stargazers_count')
  int get stargazersCount;
  @BuiltValueField(wireName: 'watchers_count')
  int get watchersCount;
  @BuiltValueField(wireName: 'language')
  String get language;
  @BuiltValueField(wireName: 'has_issues')
  bool get hasIssues;
  @BuiltValueField(wireName: 'has_projects')
  bool get hasProjects;
  @BuiltValueField(wireName: 'has_downloads')
  bool get hasDownloads;
  @BuiltValueField(wireName: 'has_wiki')
  bool get hasWiki;
  @BuiltValueField(wireName: 'has_pages')
  bool get hasPages;
  @BuiltValueField(wireName: 'forks_count')
  int get forksCount;
  @BuiltValueField(wireName: 'open_issues_count')
  int get openIssuesCount;
  @BuiltValueField(wireName: 'license')
  @nullable
  License get license;
  @BuiltValueField(wireName: 'forks')
  int get forks;
  @BuiltValueField(wireName: 'open_issues')
  int get openIssues;
  @BuiltValueField(wireName: 'watchers')
  int get watchers;
  @BuiltValueField(wireName: 'default_branch')
  String get defaultBranch;
  @nullable
  @BuiltValueField(wireName: 'permissions')
  Permissions get permissions;
  @nullable
  @BuiltValueField(wireName: 'source')
  Repository get source;
  @nullable
  @BuiltValueField(wireName: 'parent')
  Repository get parent;

  String toJson() {
    return json.encode(serializers.serializeWith(Repository.serializer, this));
  }

  static Repository fromJson(String jsonString) {
    return serializers.deserializeWith(
        Repository.serializer, json.decode(jsonString));
  }

  static Serializer<Repository> get serializer => _$repositorySerializer;
}
