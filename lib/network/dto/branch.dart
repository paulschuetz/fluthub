library branch;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'branch.g.dart';

abstract class Branch implements Built<Branch, BranchBuilder> {
  Branch._();

  factory Branch([updates(BranchBuilder b)]) = _$Branch;

  @BuiltValueField(wireName: 'name')
  String get name;

  String toJson() {
    return json.encode(serializers.serializeWith(Branch.serializer, this));
  }

  static Branch fromJson(String jsonString) {
    return serializers.deserializeWith(
        Branch.serializer, json.decode(jsonString));
  }

  static Serializer<Branch> get serializer => _$branchSerializer;
}
