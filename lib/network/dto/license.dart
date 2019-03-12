library license;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/serializers.dart';

part 'license.g.dart';

abstract class License implements Built<License, LicenseBuilder> {
  License._();

  factory License([updates(LicenseBuilder b)]) = _$License;

  @BuiltValueField(wireName: 'key')
  String get key;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'spdx_id')
  String get spdxId;
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'node_id')
  String get nodeId;
  String toJson() {
    return json.encode(serializers.serializeWith(License.serializer, this));
  }

  static License fromJson(String jsonString) {
    return serializers.deserializeWith(
        License.serializer, json.decode(jsonString));
  }

  static Serializer<License> get serializer => _$licenseSerializer;
}
