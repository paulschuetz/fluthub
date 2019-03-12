// GENERATED CODE - DO NOT MODIFY BY HAND

part of repository;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Repository> _$repositorySerializer = new _$RepositorySerializer();

class _$RepositorySerializer implements StructuredSerializer<Repository> {
  @override
  final Iterable<Type> types = const [Repository, _$Repository];
  @override
  final String wireName = 'Repository';

  @override
  Iterable serialize(Serializers serializers, Repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'node_id',
      serializers.serialize(object.nodeId,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'full_name',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'private',
      serializers.serialize(object.private,
          specifiedType: const FullType(bool)),
      'owner',
      serializers.serialize(object.owner, specifiedType: const FullType(Owner)),
      'html_url',
      serializers.serialize(object.htmlUrl,
          specifiedType: const FullType(String)),
      'fork',
      serializers.serialize(object.fork, specifiedType: const FullType(bool)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'forks_url',
      serializers.serialize(object.forksUrl,
          specifiedType: const FullType(String)),
      'keys_url',
      serializers.serialize(object.keysUrl,
          specifiedType: const FullType(String)),
      'collaborators_url',
      serializers.serialize(object.collaboratorsUrl,
          specifiedType: const FullType(String)),
      'teams_url',
      serializers.serialize(object.teamsUrl,
          specifiedType: const FullType(String)),
      'hooks_url',
      serializers.serialize(object.hooksUrl,
          specifiedType: const FullType(String)),
      'issue_events_url',
      serializers.serialize(object.issueEventsUrl,
          specifiedType: const FullType(String)),
      'events_url',
      serializers.serialize(object.eventsUrl,
          specifiedType: const FullType(String)),
      'assignees_url',
      serializers.serialize(object.assigneesUrl,
          specifiedType: const FullType(String)),
      'branches_url',
      serializers.serialize(object.branchesUrl,
          specifiedType: const FullType(String)),
      'tags_url',
      serializers.serialize(object.tagsUrl,
          specifiedType: const FullType(String)),
      'blobs_url',
      serializers.serialize(object.blobsUrl,
          specifiedType: const FullType(String)),
      'git_tags_url',
      serializers.serialize(object.gitTagsUrl,
          specifiedType: const FullType(String)),
      'git_refs_url',
      serializers.serialize(object.gitRefsUrl,
          specifiedType: const FullType(String)),
      'trees_url',
      serializers.serialize(object.treesUrl,
          specifiedType: const FullType(String)),
      'statuses_url',
      serializers.serialize(object.statusesUrl,
          specifiedType: const FullType(String)),
      'languages_url',
      serializers.serialize(object.languagesUrl,
          specifiedType: const FullType(String)),
      'stargazers_url',
      serializers.serialize(object.stargazersUrl,
          specifiedType: const FullType(String)),
      'contributors_url',
      serializers.serialize(object.contributorsUrl,
          specifiedType: const FullType(String)),
      'subscribers_url',
      serializers.serialize(object.subscribersUrl,
          specifiedType: const FullType(String)),
      'subscription_url',
      serializers.serialize(object.subscriptionUrl,
          specifiedType: const FullType(String)),
      'commits_url',
      serializers.serialize(object.commitsUrl,
          specifiedType: const FullType(String)),
      'git_commits_url',
      serializers.serialize(object.gitCommitsUrl,
          specifiedType: const FullType(String)),
      'comments_url',
      serializers.serialize(object.commentsUrl,
          specifiedType: const FullType(String)),
      'issue_comment_url',
      serializers.serialize(object.issueCommentUrl,
          specifiedType: const FullType(String)),
      'issues_url',
      serializers.serialize(object.issuesUrl,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'pushed_at',
      serializers.serialize(object.pushedAt,
          specifiedType: const FullType(String)),
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(int)),
      'stargazers_count',
      serializers.serialize(object.stargazersCount,
          specifiedType: const FullType(int)),
      'watchers_count',
      serializers.serialize(object.watchersCount,
          specifiedType: const FullType(int)),
      'language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'has_issues',
      serializers.serialize(object.hasIssues,
          specifiedType: const FullType(bool)),
      'has_projects',
      serializers.serialize(object.hasProjects,
          specifiedType: const FullType(bool)),
      'has_downloads',
      serializers.serialize(object.hasDownloads,
          specifiedType: const FullType(bool)),
      'has_wiki',
      serializers.serialize(object.hasWiki,
          specifiedType: const FullType(bool)),
      'has_pages',
      serializers.serialize(object.hasPages,
          specifiedType: const FullType(bool)),
      'forks_count',
      serializers.serialize(object.forksCount,
          specifiedType: const FullType(int)),
      'open_issues_count',
      serializers.serialize(object.openIssuesCount,
          specifiedType: const FullType(int)),
      'forks',
      serializers.serialize(object.forks, specifiedType: const FullType(int)),
      'open_issues',
      serializers.serialize(object.openIssues,
          specifiedType: const FullType(int)),
      'watchers',
      serializers.serialize(object.watchers,
          specifiedType: const FullType(int)),
      'default_branch',
      serializers.serialize(object.defaultBranch,
          specifiedType: const FullType(String)),
      'permissions',
      serializers.serialize(object.permissions,
          specifiedType: const FullType(Permissions)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.license != null) {
      result
        ..add('license')
        ..add(serializers.serialize(object.license,
            specifiedType: const FullType(License)));
    }

    return result;
  }

  @override
  Repository deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(Owner)) as Owner);
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fork':
          result.fork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'forks_url':
          result.forksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'keys_url':
          result.keysUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'collaborators_url':
          result.collaboratorsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teams_url':
          result.teamsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hooks_url':
          result.hooksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue_events_url':
          result.issueEventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assignees_url':
          result.assigneesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branches_url':
          result.branchesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags_url':
          result.tagsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blobs_url':
          result.blobsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_tags_url':
          result.gitTagsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_refs_url':
          result.gitRefsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trees_url':
          result.treesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statuses_url':
          result.statusesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'languages_url':
          result.languagesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stargazers_url':
          result.stargazersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contributors_url':
          result.contributorsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscribers_url':
          result.subscribersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscription_url':
          result.subscriptionUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commits_url':
          result.commitsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git_commits_url':
          result.gitCommitsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments_url':
          result.commentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue_comment_url':
          result.issueCommentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues_url':
          result.issuesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pushed_at':
          result.pushedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stargazers_count':
          result.stargazersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'watchers_count':
          result.watchersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_issues':
          result.hasIssues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_projects':
          result.hasProjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_downloads':
          result.hasDownloads = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_wiki':
          result.hasWiki = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_pages':
          result.hasPages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'forks_count':
          result.forksCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'open_issues_count':
          result.openIssuesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'license':
          result.license.replace(serializers.deserialize(value,
              specifiedType: const FullType(License)) as License);
          break;
        case 'forks':
          result.forks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'open_issues':
          result.openIssues = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'watchers':
          result.watchers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'default_branch':
          result.defaultBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
              specifiedType: const FullType(Permissions)) as Permissions);
          break;
      }
    }

    return result.build();
  }
}

class _$Repository extends Repository {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final bool private;
  @override
  final Owner owner;
  @override
  final String htmlUrl;
  @override
  final String description;
  @override
  final bool fork;
  @override
  final String url;
  @override
  final String forksUrl;
  @override
  final String keysUrl;
  @override
  final String collaboratorsUrl;
  @override
  final String teamsUrl;
  @override
  final String hooksUrl;
  @override
  final String issueEventsUrl;
  @override
  final String eventsUrl;
  @override
  final String assigneesUrl;
  @override
  final String branchesUrl;
  @override
  final String tagsUrl;
  @override
  final String blobsUrl;
  @override
  final String gitTagsUrl;
  @override
  final String gitRefsUrl;
  @override
  final String treesUrl;
  @override
  final String statusesUrl;
  @override
  final String languagesUrl;
  @override
  final String stargazersUrl;
  @override
  final String contributorsUrl;
  @override
  final String subscribersUrl;
  @override
  final String subscriptionUrl;
  @override
  final String commitsUrl;
  @override
  final String gitCommitsUrl;
  @override
  final String commentsUrl;
  @override
  final String issueCommentUrl;
  @override
  final String issuesUrl;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String pushedAt;
  @override
  final String homepage;
  @override
  final int size;
  @override
  final int stargazersCount;
  @override
  final int watchersCount;
  @override
  final String language;
  @override
  final bool hasIssues;
  @override
  final bool hasProjects;
  @override
  final bool hasDownloads;
  @override
  final bool hasWiki;
  @override
  final bool hasPages;
  @override
  final int forksCount;
  @override
  final int openIssuesCount;
  @override
  final License license;
  @override
  final int forks;
  @override
  final int openIssues;
  @override
  final int watchers;
  @override
  final String defaultBranch;
  @override
  final Permissions permissions;

  factory _$Repository([void updates(RepositoryBuilder b)]) =>
      (new RepositoryBuilder()..update(updates)).build();

  _$Repository._(
      {this.id,
      this.nodeId,
      this.name,
      this.fullName,
      this.private,
      this.owner,
      this.htmlUrl,
      this.description,
      this.fork,
      this.url,
      this.forksUrl,
      this.keysUrl,
      this.collaboratorsUrl,
      this.teamsUrl,
      this.hooksUrl,
      this.issueEventsUrl,
      this.eventsUrl,
      this.assigneesUrl,
      this.branchesUrl,
      this.tagsUrl,
      this.blobsUrl,
      this.gitTagsUrl,
      this.gitRefsUrl,
      this.treesUrl,
      this.statusesUrl,
      this.languagesUrl,
      this.stargazersUrl,
      this.contributorsUrl,
      this.subscribersUrl,
      this.subscriptionUrl,
      this.commitsUrl,
      this.gitCommitsUrl,
      this.commentsUrl,
      this.issueCommentUrl,
      this.issuesUrl,
      this.createdAt,
      this.updatedAt,
      this.pushedAt,
      this.homepage,
      this.size,
      this.stargazersCount,
      this.watchersCount,
      this.language,
      this.hasIssues,
      this.hasProjects,
      this.hasDownloads,
      this.hasWiki,
      this.hasPages,
      this.forksCount,
      this.openIssuesCount,
      this.license,
      this.forks,
      this.openIssues,
      this.watchers,
      this.defaultBranch,
      this.permissions})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Repository', 'id');
    }
    if (nodeId == null) {
      throw new BuiltValueNullFieldError('Repository', 'nodeId');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Repository', 'name');
    }
    if (fullName == null) {
      throw new BuiltValueNullFieldError('Repository', 'fullName');
    }
    if (private == null) {
      throw new BuiltValueNullFieldError('Repository', 'private');
    }
    if (owner == null) {
      throw new BuiltValueNullFieldError('Repository', 'owner');
    }
    if (htmlUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'htmlUrl');
    }
    if (fork == null) {
      throw new BuiltValueNullFieldError('Repository', 'fork');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Repository', 'url');
    }
    if (forksUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'forksUrl');
    }
    if (keysUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'keysUrl');
    }
    if (collaboratorsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'collaboratorsUrl');
    }
    if (teamsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'teamsUrl');
    }
    if (hooksUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'hooksUrl');
    }
    if (issueEventsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'issueEventsUrl');
    }
    if (eventsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'eventsUrl');
    }
    if (assigneesUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'assigneesUrl');
    }
    if (branchesUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'branchesUrl');
    }
    if (tagsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'tagsUrl');
    }
    if (blobsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'blobsUrl');
    }
    if (gitTagsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'gitTagsUrl');
    }
    if (gitRefsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'gitRefsUrl');
    }
    if (treesUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'treesUrl');
    }
    if (statusesUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'statusesUrl');
    }
    if (languagesUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'languagesUrl');
    }
    if (stargazersUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'stargazersUrl');
    }
    if (contributorsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'contributorsUrl');
    }
    if (subscribersUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'subscribersUrl');
    }
    if (subscriptionUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'subscriptionUrl');
    }
    if (commitsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'commitsUrl');
    }
    if (gitCommitsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'gitCommitsUrl');
    }
    if (commentsUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'commentsUrl');
    }
    if (issueCommentUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'issueCommentUrl');
    }
    if (issuesUrl == null) {
      throw new BuiltValueNullFieldError('Repository', 'issuesUrl');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('Repository', 'createdAt');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('Repository', 'updatedAt');
    }
    if (pushedAt == null) {
      throw new BuiltValueNullFieldError('Repository', 'pushedAt');
    }
    if (size == null) {
      throw new BuiltValueNullFieldError('Repository', 'size');
    }
    if (stargazersCount == null) {
      throw new BuiltValueNullFieldError('Repository', 'stargazersCount');
    }
    if (watchersCount == null) {
      throw new BuiltValueNullFieldError('Repository', 'watchersCount');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('Repository', 'language');
    }
    if (hasIssues == null) {
      throw new BuiltValueNullFieldError('Repository', 'hasIssues');
    }
    if (hasProjects == null) {
      throw new BuiltValueNullFieldError('Repository', 'hasProjects');
    }
    if (hasDownloads == null) {
      throw new BuiltValueNullFieldError('Repository', 'hasDownloads');
    }
    if (hasWiki == null) {
      throw new BuiltValueNullFieldError('Repository', 'hasWiki');
    }
    if (hasPages == null) {
      throw new BuiltValueNullFieldError('Repository', 'hasPages');
    }
    if (forksCount == null) {
      throw new BuiltValueNullFieldError('Repository', 'forksCount');
    }
    if (openIssuesCount == null) {
      throw new BuiltValueNullFieldError('Repository', 'openIssuesCount');
    }
    if (forks == null) {
      throw new BuiltValueNullFieldError('Repository', 'forks');
    }
    if (openIssues == null) {
      throw new BuiltValueNullFieldError('Repository', 'openIssues');
    }
    if (watchers == null) {
      throw new BuiltValueNullFieldError('Repository', 'watchers');
    }
    if (defaultBranch == null) {
      throw new BuiltValueNullFieldError('Repository', 'defaultBranch');
    }
    if (permissions == null) {
      throw new BuiltValueNullFieldError('Repository', 'permissions');
    }
  }

  @override
  Repository rebuild(void updates(RepositoryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryBuilder toBuilder() => new RepositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Repository &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        fullName == other.fullName &&
        private == other.private &&
        owner == other.owner &&
        htmlUrl == other.htmlUrl &&
        description == other.description &&
        fork == other.fork &&
        url == other.url &&
        forksUrl == other.forksUrl &&
        keysUrl == other.keysUrl &&
        collaboratorsUrl == other.collaboratorsUrl &&
        teamsUrl == other.teamsUrl &&
        hooksUrl == other.hooksUrl &&
        issueEventsUrl == other.issueEventsUrl &&
        eventsUrl == other.eventsUrl &&
        assigneesUrl == other.assigneesUrl &&
        branchesUrl == other.branchesUrl &&
        tagsUrl == other.tagsUrl &&
        blobsUrl == other.blobsUrl &&
        gitTagsUrl == other.gitTagsUrl &&
        gitRefsUrl == other.gitRefsUrl &&
        treesUrl == other.treesUrl &&
        statusesUrl == other.statusesUrl &&
        languagesUrl == other.languagesUrl &&
        stargazersUrl == other.stargazersUrl &&
        contributorsUrl == other.contributorsUrl &&
        subscribersUrl == other.subscribersUrl &&
        subscriptionUrl == other.subscriptionUrl &&
        commitsUrl == other.commitsUrl &&
        gitCommitsUrl == other.gitCommitsUrl &&
        commentsUrl == other.commentsUrl &&
        issueCommentUrl == other.issueCommentUrl &&
        issuesUrl == other.issuesUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pushedAt == other.pushedAt &&
        homepage == other.homepage &&
        size == other.size &&
        stargazersCount == other.stargazersCount &&
        watchersCount == other.watchersCount &&
        language == other.language &&
        hasIssues == other.hasIssues &&
        hasProjects == other.hasProjects &&
        hasDownloads == other.hasDownloads &&
        hasWiki == other.hasWiki &&
        hasPages == other.hasPages &&
        forksCount == other.forksCount &&
        openIssuesCount == other.openIssuesCount &&
        license == other.license &&
        forks == other.forks &&
        openIssues == other.openIssues &&
        watchers == other.watchers &&
        defaultBranch == other.defaultBranch &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), nodeId.hashCode), name.hashCode), fullName.hashCode), private.hashCode), owner.hashCode), htmlUrl.hashCode), description.hashCode), fork.hashCode), url.hashCode), forksUrl.hashCode), keysUrl.hashCode), collaboratorsUrl.hashCode), teamsUrl.hashCode), hooksUrl.hashCode), issueEventsUrl.hashCode), eventsUrl.hashCode), assigneesUrl.hashCode), branchesUrl.hashCode), tagsUrl.hashCode), blobsUrl.hashCode), gitTagsUrl.hashCode), gitRefsUrl.hashCode), treesUrl.hashCode), statusesUrl.hashCode), languagesUrl.hashCode), stargazersUrl.hashCode), contributorsUrl.hashCode), subscribersUrl.hashCode), subscriptionUrl.hashCode), commitsUrl.hashCode), gitCommitsUrl.hashCode), commentsUrl.hashCode), issueCommentUrl.hashCode), issuesUrl.hashCode), createdAt.hashCode), updatedAt.hashCode),
                                                                                pushedAt.hashCode),
                                                                            homepage.hashCode),
                                                                        size.hashCode),
                                                                    stargazersCount.hashCode),
                                                                watchersCount.hashCode),
                                                            language.hashCode),
                                                        hasIssues.hashCode),
                                                    hasProjects.hashCode),
                                                hasDownloads.hashCode),
                                            hasWiki.hashCode),
                                        hasPages.hashCode),
                                    forksCount.hashCode),
                                openIssuesCount.hashCode),
                            license.hashCode),
                        forks.hashCode),
                    openIssues.hashCode),
                watchers.hashCode),
            defaultBranch.hashCode),
        permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Repository')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('fullName', fullName)
          ..add('private', private)
          ..add('owner', owner)
          ..add('htmlUrl', htmlUrl)
          ..add('description', description)
          ..add('fork', fork)
          ..add('url', url)
          ..add('forksUrl', forksUrl)
          ..add('keysUrl', keysUrl)
          ..add('collaboratorsUrl', collaboratorsUrl)
          ..add('teamsUrl', teamsUrl)
          ..add('hooksUrl', hooksUrl)
          ..add('issueEventsUrl', issueEventsUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('assigneesUrl', assigneesUrl)
          ..add('branchesUrl', branchesUrl)
          ..add('tagsUrl', tagsUrl)
          ..add('blobsUrl', blobsUrl)
          ..add('gitTagsUrl', gitTagsUrl)
          ..add('gitRefsUrl', gitRefsUrl)
          ..add('treesUrl', treesUrl)
          ..add('statusesUrl', statusesUrl)
          ..add('languagesUrl', languagesUrl)
          ..add('stargazersUrl', stargazersUrl)
          ..add('contributorsUrl', contributorsUrl)
          ..add('subscribersUrl', subscribersUrl)
          ..add('subscriptionUrl', subscriptionUrl)
          ..add('commitsUrl', commitsUrl)
          ..add('gitCommitsUrl', gitCommitsUrl)
          ..add('commentsUrl', commentsUrl)
          ..add('issueCommentUrl', issueCommentUrl)
          ..add('issuesUrl', issuesUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('pushedAt', pushedAt)
          ..add('homepage', homepage)
          ..add('size', size)
          ..add('stargazersCount', stargazersCount)
          ..add('watchersCount', watchersCount)
          ..add('language', language)
          ..add('hasIssues', hasIssues)
          ..add('hasProjects', hasProjects)
          ..add('hasDownloads', hasDownloads)
          ..add('hasWiki', hasWiki)
          ..add('hasPages', hasPages)
          ..add('forksCount', forksCount)
          ..add('openIssuesCount', openIssuesCount)
          ..add('license', license)
          ..add('forks', forks)
          ..add('openIssues', openIssues)
          ..add('watchers', watchers)
          ..add('defaultBranch', defaultBranch)
          ..add('permissions', permissions))
        .toString();
  }
}

class RepositoryBuilder implements Builder<Repository, RepositoryBuilder> {
  _$Repository _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  OwnerBuilder _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder owner) => _$this._owner = owner;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  bool _fork;
  bool get fork => _$this._fork;
  set fork(bool fork) => _$this._fork = fork;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _forksUrl;
  String get forksUrl => _$this._forksUrl;
  set forksUrl(String forksUrl) => _$this._forksUrl = forksUrl;

  String _keysUrl;
  String get keysUrl => _$this._keysUrl;
  set keysUrl(String keysUrl) => _$this._keysUrl = keysUrl;

  String _collaboratorsUrl;
  String get collaboratorsUrl => _$this._collaboratorsUrl;
  set collaboratorsUrl(String collaboratorsUrl) =>
      _$this._collaboratorsUrl = collaboratorsUrl;

  String _teamsUrl;
  String get teamsUrl => _$this._teamsUrl;
  set teamsUrl(String teamsUrl) => _$this._teamsUrl = teamsUrl;

  String _hooksUrl;
  String get hooksUrl => _$this._hooksUrl;
  set hooksUrl(String hooksUrl) => _$this._hooksUrl = hooksUrl;

  String _issueEventsUrl;
  String get issueEventsUrl => _$this._issueEventsUrl;
  set issueEventsUrl(String issueEventsUrl) =>
      _$this._issueEventsUrl = issueEventsUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _assigneesUrl;
  String get assigneesUrl => _$this._assigneesUrl;
  set assigneesUrl(String assigneesUrl) => _$this._assigneesUrl = assigneesUrl;

  String _branchesUrl;
  String get branchesUrl => _$this._branchesUrl;
  set branchesUrl(String branchesUrl) => _$this._branchesUrl = branchesUrl;

  String _tagsUrl;
  String get tagsUrl => _$this._tagsUrl;
  set tagsUrl(String tagsUrl) => _$this._tagsUrl = tagsUrl;

  String _blobsUrl;
  String get blobsUrl => _$this._blobsUrl;
  set blobsUrl(String blobsUrl) => _$this._blobsUrl = blobsUrl;

  String _gitTagsUrl;
  String get gitTagsUrl => _$this._gitTagsUrl;
  set gitTagsUrl(String gitTagsUrl) => _$this._gitTagsUrl = gitTagsUrl;

  String _gitRefsUrl;
  String get gitRefsUrl => _$this._gitRefsUrl;
  set gitRefsUrl(String gitRefsUrl) => _$this._gitRefsUrl = gitRefsUrl;

  String _treesUrl;
  String get treesUrl => _$this._treesUrl;
  set treesUrl(String treesUrl) => _$this._treesUrl = treesUrl;

  String _statusesUrl;
  String get statusesUrl => _$this._statusesUrl;
  set statusesUrl(String statusesUrl) => _$this._statusesUrl = statusesUrl;

  String _languagesUrl;
  String get languagesUrl => _$this._languagesUrl;
  set languagesUrl(String languagesUrl) => _$this._languagesUrl = languagesUrl;

  String _stargazersUrl;
  String get stargazersUrl => _$this._stargazersUrl;
  set stargazersUrl(String stargazersUrl) =>
      _$this._stargazersUrl = stargazersUrl;

  String _contributorsUrl;
  String get contributorsUrl => _$this._contributorsUrl;
  set contributorsUrl(String contributorsUrl) =>
      _$this._contributorsUrl = contributorsUrl;

  String _subscribersUrl;
  String get subscribersUrl => _$this._subscribersUrl;
  set subscribersUrl(String subscribersUrl) =>
      _$this._subscribersUrl = subscribersUrl;

  String _subscriptionUrl;
  String get subscriptionUrl => _$this._subscriptionUrl;
  set subscriptionUrl(String subscriptionUrl) =>
      _$this._subscriptionUrl = subscriptionUrl;

  String _commitsUrl;
  String get commitsUrl => _$this._commitsUrl;
  set commitsUrl(String commitsUrl) => _$this._commitsUrl = commitsUrl;

  String _gitCommitsUrl;
  String get gitCommitsUrl => _$this._gitCommitsUrl;
  set gitCommitsUrl(String gitCommitsUrl) =>
      _$this._gitCommitsUrl = gitCommitsUrl;

  String _commentsUrl;
  String get commentsUrl => _$this._commentsUrl;
  set commentsUrl(String commentsUrl) => _$this._commentsUrl = commentsUrl;

  String _issueCommentUrl;
  String get issueCommentUrl => _$this._issueCommentUrl;
  set issueCommentUrl(String issueCommentUrl) =>
      _$this._issueCommentUrl = issueCommentUrl;

  String _issuesUrl;
  String get issuesUrl => _$this._issuesUrl;
  set issuesUrl(String issuesUrl) => _$this._issuesUrl = issuesUrl;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _pushedAt;
  String get pushedAt => _$this._pushedAt;
  set pushedAt(String pushedAt) => _$this._pushedAt = pushedAt;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  int _stargazersCount;
  int get stargazersCount => _$this._stargazersCount;
  set stargazersCount(int stargazersCount) =>
      _$this._stargazersCount = stargazersCount;

  int _watchersCount;
  int get watchersCount => _$this._watchersCount;
  set watchersCount(int watchersCount) => _$this._watchersCount = watchersCount;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  bool _hasIssues;
  bool get hasIssues => _$this._hasIssues;
  set hasIssues(bool hasIssues) => _$this._hasIssues = hasIssues;

  bool _hasProjects;
  bool get hasProjects => _$this._hasProjects;
  set hasProjects(bool hasProjects) => _$this._hasProjects = hasProjects;

  bool _hasDownloads;
  bool get hasDownloads => _$this._hasDownloads;
  set hasDownloads(bool hasDownloads) => _$this._hasDownloads = hasDownloads;

  bool _hasWiki;
  bool get hasWiki => _$this._hasWiki;
  set hasWiki(bool hasWiki) => _$this._hasWiki = hasWiki;

  bool _hasPages;
  bool get hasPages => _$this._hasPages;
  set hasPages(bool hasPages) => _$this._hasPages = hasPages;

  int _forksCount;
  int get forksCount => _$this._forksCount;
  set forksCount(int forksCount) => _$this._forksCount = forksCount;

  int _openIssuesCount;
  int get openIssuesCount => _$this._openIssuesCount;
  set openIssuesCount(int openIssuesCount) =>
      _$this._openIssuesCount = openIssuesCount;

  LicenseBuilder _license;
  LicenseBuilder get license => _$this._license ??= new LicenseBuilder();
  set license(LicenseBuilder license) => _$this._license = license;

  int _forks;
  int get forks => _$this._forks;
  set forks(int forks) => _$this._forks = forks;

  int _openIssues;
  int get openIssues => _$this._openIssues;
  set openIssues(int openIssues) => _$this._openIssues = openIssues;

  int _watchers;
  int get watchers => _$this._watchers;
  set watchers(int watchers) => _$this._watchers = watchers;

  String _defaultBranch;
  String get defaultBranch => _$this._defaultBranch;
  set defaultBranch(String defaultBranch) =>
      _$this._defaultBranch = defaultBranch;

  PermissionsBuilder _permissions;
  PermissionsBuilder get permissions =>
      _$this._permissions ??= new PermissionsBuilder();
  set permissions(PermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  RepositoryBuilder();

  RepositoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _fullName = _$v.fullName;
      _private = _$v.private;
      _owner = _$v.owner?.toBuilder();
      _htmlUrl = _$v.htmlUrl;
      _description = _$v.description;
      _fork = _$v.fork;
      _url = _$v.url;
      _forksUrl = _$v.forksUrl;
      _keysUrl = _$v.keysUrl;
      _collaboratorsUrl = _$v.collaboratorsUrl;
      _teamsUrl = _$v.teamsUrl;
      _hooksUrl = _$v.hooksUrl;
      _issueEventsUrl = _$v.issueEventsUrl;
      _eventsUrl = _$v.eventsUrl;
      _assigneesUrl = _$v.assigneesUrl;
      _branchesUrl = _$v.branchesUrl;
      _tagsUrl = _$v.tagsUrl;
      _blobsUrl = _$v.blobsUrl;
      _gitTagsUrl = _$v.gitTagsUrl;
      _gitRefsUrl = _$v.gitRefsUrl;
      _treesUrl = _$v.treesUrl;
      _statusesUrl = _$v.statusesUrl;
      _languagesUrl = _$v.languagesUrl;
      _stargazersUrl = _$v.stargazersUrl;
      _contributorsUrl = _$v.contributorsUrl;
      _subscribersUrl = _$v.subscribersUrl;
      _subscriptionUrl = _$v.subscriptionUrl;
      _commitsUrl = _$v.commitsUrl;
      _gitCommitsUrl = _$v.gitCommitsUrl;
      _commentsUrl = _$v.commentsUrl;
      _issueCommentUrl = _$v.issueCommentUrl;
      _issuesUrl = _$v.issuesUrl;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _pushedAt = _$v.pushedAt;
      _homepage = _$v.homepage;
      _size = _$v.size;
      _stargazersCount = _$v.stargazersCount;
      _watchersCount = _$v.watchersCount;
      _language = _$v.language;
      _hasIssues = _$v.hasIssues;
      _hasProjects = _$v.hasProjects;
      _hasDownloads = _$v.hasDownloads;
      _hasWiki = _$v.hasWiki;
      _hasPages = _$v.hasPages;
      _forksCount = _$v.forksCount;
      _openIssuesCount = _$v.openIssuesCount;
      _license = _$v.license?.toBuilder();
      _forks = _$v.forks;
      _openIssues = _$v.openIssues;
      _watchers = _$v.watchers;
      _defaultBranch = _$v.defaultBranch;
      _permissions = _$v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Repository other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Repository;
  }

  @override
  void update(void updates(RepositoryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Repository build() {
    _$Repository _$result;
    try {
      _$result = _$v ??
          new _$Repository._(
              id: id,
              nodeId: nodeId,
              name: name,
              fullName: fullName,
              private: private,
              owner: owner.build(),
              htmlUrl: htmlUrl,
              description: description,
              fork: fork,
              url: url,
              forksUrl: forksUrl,
              keysUrl: keysUrl,
              collaboratorsUrl: collaboratorsUrl,
              teamsUrl: teamsUrl,
              hooksUrl: hooksUrl,
              issueEventsUrl: issueEventsUrl,
              eventsUrl: eventsUrl,
              assigneesUrl: assigneesUrl,
              branchesUrl: branchesUrl,
              tagsUrl: tagsUrl,
              blobsUrl: blobsUrl,
              gitTagsUrl: gitTagsUrl,
              gitRefsUrl: gitRefsUrl,
              treesUrl: treesUrl,
              statusesUrl: statusesUrl,
              languagesUrl: languagesUrl,
              stargazersUrl: stargazersUrl,
              contributorsUrl: contributorsUrl,
              subscribersUrl: subscribersUrl,
              subscriptionUrl: subscriptionUrl,
              commitsUrl: commitsUrl,
              gitCommitsUrl: gitCommitsUrl,
              commentsUrl: commentsUrl,
              issueCommentUrl: issueCommentUrl,
              issuesUrl: issuesUrl,
              createdAt: createdAt,
              updatedAt: updatedAt,
              pushedAt: pushedAt,
              homepage: homepage,
              size: size,
              stargazersCount: stargazersCount,
              watchersCount: watchersCount,
              language: language,
              hasIssues: hasIssues,
              hasProjects: hasProjects,
              hasDownloads: hasDownloads,
              hasWiki: hasWiki,
              hasPages: hasPages,
              forksCount: forksCount,
              openIssuesCount: openIssuesCount,
              license: _license?.build(),
              forks: forks,
              openIssues: openIssues,
              watchers: watchers,
              defaultBranch: defaultBranch,
              permissions: permissions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();

        _$failedField = 'license';
        _license?.build();

        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Repository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
