// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midwest_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidwestStudent _$MidwestStudentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'user':
      return StudentData.fromJson(json);
    case 'error':
      return StudentError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MidwestStudent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MidwestStudent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? photoUrl,
            String? uid, String? course, String? faculty)
        user,
    required TResult Function(String? errorMessage, int? errorCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? email, String? photoUrl,
            String? uid, String? course, String? faculty)?
        user,
    TResult? Function(String? errorMessage, int? errorCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? photoUrl, String? uid,
            String? course, String? faculty)?
        user,
    TResult Function(String? errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentData value) user,
    required TResult Function(StudentError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudentData value)? user,
    TResult? Function(StudentError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentData value)? user,
    TResult Function(StudentError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidwestStudentCopyWith<$Res> {
  factory $MidwestStudentCopyWith(
          MidwestStudent value, $Res Function(MidwestStudent) then) =
      _$MidwestStudentCopyWithImpl<$Res, MidwestStudent>;
}

/// @nodoc
class _$MidwestStudentCopyWithImpl<$Res, $Val extends MidwestStudent>
    implements $MidwestStudentCopyWith<$Res> {
  _$MidwestStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StudentDataCopyWith<$Res> {
  factory _$$StudentDataCopyWith(
          _$StudentData value, $Res Function(_$StudentData) then) =
      __$$StudentDataCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? photoUrl,
      String? uid,
      String? course,
      String? faculty});
}

/// @nodoc
class __$$StudentDataCopyWithImpl<$Res>
    extends _$MidwestStudentCopyWithImpl<$Res, _$StudentData>
    implements _$$StudentDataCopyWith<$Res> {
  __$$StudentDataCopyWithImpl(
      _$StudentData _value, $Res Function(_$StudentData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? uid = freezed,
    Object? course = freezed,
    Object? faculty = freezed,
  }) {
    return _then(_$StudentData(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentData implements StudentData {
  const _$StudentData(
      {required this.name,
      required this.email,
      required this.photoUrl,
      required this.uid,
      required this.course,
      required this.faculty,
      final String? $type})
      : $type = $type ?? 'user';

  factory _$StudentData.fromJson(Map<String, dynamic> json) =>
      _$$StudentDataFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final String? course;
  @override
  final String? faculty;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MidwestStudent.user(name: $name, email: $email, photoUrl: $photoUrl, uid: $uid, course: $course, faculty: $faculty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.faculty, faculty) || other.faculty == faculty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, photoUrl, uid, course, faculty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDataCopyWith<_$StudentData> get copyWith =>
      __$$StudentDataCopyWithImpl<_$StudentData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? photoUrl,
            String? uid, String? course, String? faculty)
        user,
    required TResult Function(String? errorMessage, int? errorCode) error,
  }) {
    return user(name, email, photoUrl, uid, course, faculty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? email, String? photoUrl,
            String? uid, String? course, String? faculty)?
        user,
    TResult? Function(String? errorMessage, int? errorCode)? error,
  }) {
    return user?.call(name, email, photoUrl, uid, course, faculty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? photoUrl, String? uid,
            String? course, String? faculty)?
        user,
    TResult Function(String? errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(name, email, photoUrl, uid, course, faculty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentData value) user,
    required TResult Function(StudentError value) error,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudentData value)? user,
    TResult? Function(StudentError value)? error,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentData value)? user,
    TResult Function(StudentError value)? error,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDataToJson(
      this,
    );
  }
}

abstract class StudentData implements MidwestStudent {
  const factory StudentData({
    required final String? name,
    required final String? email,
    required final String? photoUrl,
    required final String? uid,
    required final String? course,
    required final String? faculty,
  }) = _$StudentData;

  factory StudentData.fromJson(Map<String, dynamic> json) =
      _$StudentData.fromJson;

  String? get name;
  String? get email;
  String? get photoUrl;
  String? get uid;
  String? get course;
  String? get faculty;
  @JsonKey(ignore: true)
  _$$StudentDataCopyWith<_$StudentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudentErrorCopyWith<$Res> {
  factory _$$StudentErrorCopyWith(
          _$StudentError value, $Res Function(_$StudentError) then) =
      __$$StudentErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorMessage, int? errorCode});
}

/// @nodoc
class __$$StudentErrorCopyWithImpl<$Res>
    extends _$MidwestStudentCopyWithImpl<$Res, _$StudentError>
    implements _$$StudentErrorCopyWith<$Res> {
  __$$StudentErrorCopyWithImpl(
      _$StudentError _value, $Res Function(_$StudentError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_$StudentError(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentError implements StudentError {
  const _$StudentError(
      {required this.errorMessage,
      required this.errorCode,
      final String? $type})
      : $type = $type ?? 'error';

  factory _$StudentError.fromJson(Map<String, dynamic> json) =>
      _$$StudentErrorFromJson(json);

  @override
  final String? errorMessage;
  @override
  final int? errorCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MidwestStudent.error(errorMessage: $errorMessage, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentErrorCopyWith<_$StudentError> get copyWith =>
      __$$StudentErrorCopyWithImpl<_$StudentError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, String? email, String? photoUrl,
            String? uid, String? course, String? faculty)
        user,
    required TResult Function(String? errorMessage, int? errorCode) error,
  }) {
    return error(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, String? email, String? photoUrl,
            String? uid, String? course, String? faculty)?
        user,
    TResult? Function(String? errorMessage, int? errorCode)? error,
  }) {
    return error?.call(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, String? email, String? photoUrl, String? uid,
            String? course, String? faculty)?
        user,
    TResult Function(String? errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudentData value) user,
    required TResult Function(StudentError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudentData value)? user,
    TResult? Function(StudentError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudentData value)? user,
    TResult Function(StudentError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentErrorToJson(
      this,
    );
  }
}

abstract class StudentError implements MidwestStudent {
  const factory StudentError(
      {required final String? errorMessage,
      required final int? errorCode}) = _$StudentError;

  factory StudentError.fromJson(Map<String, dynamic> json) =
      _$StudentError.fromJson;

  String? get errorMessage;
  int? get errorCode;
  @JsonKey(ignore: true)
  _$$StudentErrorCopyWith<_$StudentError> get copyWith =>
      throw _privateConstructorUsedError;
}
