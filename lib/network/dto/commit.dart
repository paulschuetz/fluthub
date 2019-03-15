import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/author.dart';
import 'package:fluthub/network/dto/commit_details.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'commit.g.dart';

abstract class Commit implements Built<Commit, CommitBuilder> {
  Commit._();

  factory Commit([updates(CommitBuilder b)]) = _$Commit;

  @BuiltValueField(wireName: 'sha')
  String get sha;
  @BuiltValueField(wireName: 'node_id')
  String get nodeId;
  @BuiltValueField(wireName: 'commit')
  CommitDetails get commit;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'html_url')
  String get htmlUrl;
  @BuiltValueField(wireName: 'comments_url')
  String get commentsUrl;
  @nullable
  @BuiltValueField(wireName: 'author')
  Author get author;
  String toJson() {
    return json.encode(serializers.serializeWith(Commit.serializer, this));
  }

  static Commit fromJson(String jsonString) {
    return serializers.deserializeWith(
        Commit.serializer, json.decode(jsonString));
  }

  static Serializer<Commit> get serializer => _$commitSerializer;
}
