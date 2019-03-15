// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:fluthub/network/dto/author.dart';
import 'package:fluthub/network/dto/commit.dart';
import 'package:fluthub/network/dto/commit_details.dart';
import 'package:fluthub/network/dto/commit_user.dart';
import 'package:fluthub/network/dto/license.dart';
import 'package:fluthub/network/dto/owner.dart';
import 'package:fluthub/network/dto/permissions.dart';
import 'package:fluthub/network/dto/repository.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:fluthub/network/dto/user.dart';

part 'serializers.g.dart';

/// Example of how to use built_value serialization.
///
/// Declare a top level [Serializers] field called serializers. Annotate it
/// with [SerializersFor] and provide a `const` `List` of types you want to
/// be serializable.
///
/// The built_value code generator will provide the implementation. It will
/// contain serializers for all the types asked for explicitly plus all the
/// types needed transitively via fields.
///
/// You usually only need to do this once per project.
@SerializersFor(const [
  Repository,
  Permissions,
  Owner,
  License,
  User,
  Commit,
  CommitDetails,
  Author,
  CommitUser
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

T deserialize<T>(dynamic value) =>
    serializers.deserializeWith<T>(serializers.serializerForType(T), value);

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList.from(
    value.map((value) => deserialize<T>(value)).toList(growable: false));
