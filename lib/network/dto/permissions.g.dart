// GENERATED CODE - DO NOT MODIFY BY HAND

part of permissions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Permissions> _$permissionsSerializer = new _$PermissionsSerializer();

class _$PermissionsSerializer implements StructuredSerializer<Permissions> {
  @override
  final Iterable<Type> types = const [Permissions, _$Permissions];
  @override
  final String wireName = 'Permissions';

  @override
  Iterable serialize(Serializers serializers, Permissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'admin',
      serializers.serialize(object.admin, specifiedType: const FullType(bool)),
      'push',
      serializers.serialize(object.push, specifiedType: const FullType(bool)),
      'pull',
      serializers.serialize(object.pull, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Permissions deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'push':
          result.push = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'pull':
          result.pull = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Permissions extends Permissions {
  @override
  final bool admin;
  @override
  final bool push;
  @override
  final bool pull;

  factory _$Permissions([void updates(PermissionsBuilder b)]) =>
      (new PermissionsBuilder()..update(updates)).build();

  _$Permissions._({this.admin, this.push, this.pull}) : super._() {
    if (admin == null) {
      throw new BuiltValueNullFieldError('Permissions', 'admin');
    }
    if (push == null) {
      throw new BuiltValueNullFieldError('Permissions', 'push');
    }
    if (pull == null) {
      throw new BuiltValueNullFieldError('Permissions', 'pull');
    }
  }

  @override
  Permissions rebuild(void updates(PermissionsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionsBuilder toBuilder() => new PermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Permissions &&
        admin == other.admin &&
        push == other.push &&
        pull == other.pull;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, admin.hashCode), push.hashCode), pull.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Permissions')
          ..add('admin', admin)
          ..add('push', push)
          ..add('pull', pull))
        .toString();
  }
}

class PermissionsBuilder implements Builder<Permissions, PermissionsBuilder> {
  _$Permissions _$v;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  bool _push;
  bool get push => _$this._push;
  set push(bool push) => _$this._push = push;

  bool _pull;
  bool get pull => _$this._pull;
  set pull(bool pull) => _$this._pull = pull;

  PermissionsBuilder();

  PermissionsBuilder get _$this {
    if (_$v != null) {
      _admin = _$v.admin;
      _push = _$v.push;
      _pull = _$v.pull;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Permissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Permissions;
  }

  @override
  void update(void updates(PermissionsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Permissions build() {
    final _$result =
        _$v ?? new _$Permissions._(admin: admin, push: push, pull: pull);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
