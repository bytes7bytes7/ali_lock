// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locker_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockerVM {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isLocked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockerVMCopyWith<LockerVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockerVMCopyWith<$Res> {
  factory $LockerVMCopyWith(LockerVM value, $Res Function(LockerVM) then) =
      _$LockerVMCopyWithImpl<$Res, LockerVM>;
  @useResult
  $Res call({String id, String code, String title, bool isLocked});
}

/// @nodoc
class _$LockerVMCopyWithImpl<$Res, $Val extends LockerVM>
    implements $LockerVMCopyWith<$Res> {
  _$LockerVMCopyWithImpl(this._value, this._then);

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
              as String,
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
abstract class _$$_LockerVMCopyWith<$Res> implements $LockerVMCopyWith<$Res> {
  factory _$$_LockerVMCopyWith(
          _$_LockerVM value, $Res Function(_$_LockerVM) then) =
      __$$_LockerVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String code, String title, bool isLocked});
}

/// @nodoc
class __$$_LockerVMCopyWithImpl<$Res>
    extends _$LockerVMCopyWithImpl<$Res, _$_LockerVM>
    implements _$$_LockerVMCopyWith<$Res> {
  __$$_LockerVMCopyWithImpl(
      _$_LockerVM _value, $Res Function(_$_LockerVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? title = null,
    Object? isLocked = null,
  }) {
    return _then(_$_LockerVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_LockerVM implements _LockerVM {
  const _$_LockerVM(
      {required this.id,
      required this.code,
      required this.title,
      required this.isLocked});

  @override
  final String id;
  @override
  final String code;
  @override
  final String title;
  @override
  final bool isLocked;

  @override
  String toString() {
    return 'LockerVM(id: $id, code: $code, title: $title, isLocked: $isLocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LockerVM &&
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
  _$$_LockerVMCopyWith<_$_LockerVM> get copyWith =>
      __$$_LockerVMCopyWithImpl<_$_LockerVM>(this, _$identity);
}

abstract class _LockerVM implements LockerVM {
  const factory _LockerVM(
      {required final String id,
      required final String code,
      required final String title,
      required final bool isLocked}) = _$_LockerVM;

  @override
  String get id;
  @override
  String get code;
  @override
  String get title;
  @override
  bool get isLocked;
  @override
  @JsonKey(ignore: true)
  _$$_LockerVMCopyWith<_$_LockerVM> get copyWith =>
      throw _privateConstructorUsedError;
}
