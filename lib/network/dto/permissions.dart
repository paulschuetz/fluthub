library permissions;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'permissions.g.dart';

abstract class Permissions implements Built<Permissions, PermissionsBuilder> {
  Permissions._();

  factory Permissions([updates(PermissionsBuilder b)]) = _$Permissions;

  @BuiltValueField(wireName: 'admin')
  bool get admin;
  @BuiltValueField(wireName: 'push')
  bool get push;
  @BuiltValueField(wireName: 'pull')
  bool get pull;
  String toJson() {
    return json.encode(serializers.serializeWith(Permissions.serializer, this));
  }

  static Permissions fromJson(String jsonString) {
    return serializers.deserializeWith(
        Permissions.serializer, json.decode(jsonString));
  }

  static Serializer<Permissions> get serializer => _$permissionsSerializer;
}
