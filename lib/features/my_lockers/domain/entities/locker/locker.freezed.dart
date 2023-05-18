// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Locker {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockerCopyWith<Locker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockerCopyWith<$Res> {
  factory $LockerCopyWith(Locker value, $Res Function(Locker) then) =
      _$LockerCopyWithImpl<$Res, Locker>;
  @useResult
  $Res call({int id, String code, String title, bool isLocked});
}

/// @nodoc
class _$LockerCopyWithImpl<$Res, $Val extends Locker>
    implements $LockerCopyWith<$Res> {
  _$LockerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? title = null,
    Object? isLocked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LockerCopyWith<$Res> implements $LockerCopyWith<$Res> {
  factory _$$_LockerCopyWith(_$_Locker value, $Res Function(_$_Locker) then) =
      __$$_LockerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String code, String title, bool isLocked});
}

/// @nodoc
class __$$_LockerCopyWithImpl<$Res>
    extends _$LockerCopyWithImpl<$Res, _$_Locker>
    implements _$$_LockerCopyWith<$Res> {
  __$$_LockerCopyWithImpl(_$_Locker _value, $Res Function(_$_Locker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? title = null,
    Object? isLocked = null,
  }) {
    return _then(_$_Locker(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isLocked: null == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Locker implements _Locker {
  const _$_Locker(
      {required this.id,
      required this.code,
      required this.title,
      required this.isLocked});

  @override
  final int id;
  @override
  final String code;
  @override
  final String title;
  @override
  final bool isLocked;

  @override
  String toString() {
    return 'Locker(id: $id, code: $code, title: $title, isLocked: $isLocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locker &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, code, title, isLocked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LockerCopyWith<_$_Locker> get copyWith =>
      __$$_LockerCopyWithImpl<_$_Locker>(this, _$identity);
}

abstract class _Locker implements Locker {
  const factory _Locker(
      {required final int id,
      required final String code,
      required final String title,
      required final bool isLocked}) = _$_Locker;

  @override
  int get id;
  @override
  String get code;
  @override
  String get title;
  @override
  bool get isLocked;
  @override
  @JsonKey(ignore: true)
  _$$_LockerCopyWith<_$_Locker> get copyWith =>
      throw _privateConstructorUsedError;
}
