library user;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  @BuiltValueField(wireName: 'login')
  String get login;
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'node_id')
  String get nodeId;
  @BuiltValueField(wireName: 'avatar_url')
  String get avatarUrl;
  @BuiltValueField(wireName: 'gravatar_id')
  @nullable
  String get gravatarId;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'html_url')
  String get htmlUrl;
  @BuiltValueField(wireName: 'followers_url')
  String get followersUrl;
  @BuiltValueField(wireName: 'following_url')
  String get followingUrl;
  @BuiltValueField(wireName: 'gists_url')
  String get gistsUrl;
  @BuiltValueField(wireName: 'starred_url')
  String get starredUrl;
  @BuiltValueField(wireName: 'subscriptions_url')
  String get subscriptionsUrl;
  @BuiltValueField(wireName: 'organizations_url')
  String get organizationsUrl;
  @BuiltValueField(wireName: 'repos_url')
  String get reposUrl;
  @BuiltValueField(wireName: 'events_url')
  String get eventsUrl;
  @BuiltValueField(wireName: 'received_events_url')
  String get receivedEventsUrl;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'site_admin')
  bool get siteAdmin;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'company')
  @nullable
  String get company;
  @BuiltValueField(wireName: 'blog')
  @nullable
  String get blog;
  @BuiltValueField(wireName: 'location')
  @nullable
  String get location;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'hireable')
  @nullable
  bool get hireable;
  @BuiltValueField(wireName: 'bio')
  @nullable
  String get bio;
  @BuiltValueField(wireName: 'public_repos')
  int get publicRepos;
  @BuiltValueField(wireName: 'public_gists')
  int get publicGists;
  @BuiltValueField(wireName: 'followers')
  int get followers;
  @BuiltValueField(wireName: 'following')
  int get following;
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;
  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  static Serializer<User> get serializer => _$userSerializer;
}