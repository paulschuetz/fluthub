import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/author.dart';
import 'package:fluthub/network/dto/commit_user.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'commit_details.g.dart';

abstract class CommitDetails
    implements Built<CommitDetails, CommitDetailsBuilder> {
  CommitDetails._();

  factory CommitDetails([updates(CommitDetailsBuilder b)]) = _$CommitDetails;

  @BuiltValueField(wireName: 'author')
  CommitUser get author;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'comment_count')
  int get commentCount;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CommitDetails.serializer, this));
  }

  static CommitDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        CommitDetails.serializer, json.decode(jsonString));
  }

  static Serializer<CommitDetails> get serializer => _$commitDetailsSerializer;
}
