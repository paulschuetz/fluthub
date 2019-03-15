library commit_user;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'commit_user.g.dart';

abstract class CommitUser implements Built<CommitUser, CommitUserBuilder> {
  CommitUser._();

  factory CommitUser([updates(CommitUserBuilder b)]) = _$CommitUser;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'date')
  String get date;
  String toJson() {
    return json.encode(serializers.serializeWith(CommitUser.serializer, this));
  }

  static CommitUser fromJson(String jsonString) {
    return serializers.deserializeWith(
        CommitUser.serializer, json.decode(jsonString));
  }

  static Serializer<CommitUser> get serializer => _$commitUserSerializer;
}
