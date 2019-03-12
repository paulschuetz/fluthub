library owner;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'owner.g.dart';

abstract class Owner implements Built<Owner, OwnerBuilder> {
  Owner._();

  factory Owner([updates(OwnerBuilder b)]) = _$Owner;

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
  String toJson() {
    return json.encode(serializers.serializeWith(Owner.serializer, this));
  }

  static Owner fromJson(String jsonString) {
    return serializers.deserializeWith(
        Owner.serializer, json.decode(jsonString));
  }

  static Serializer<Owner> get serializer => _$ownerSerializer;
}
