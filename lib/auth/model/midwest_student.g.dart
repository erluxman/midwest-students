// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'midwest_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentData _$$StudentDataFromJson(Map<String, dynamic> json) =>
    _$StudentData(
      name: json['name'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photoUrl'] as String?,
      uid: json['uid'] as String?,
      course: json['course'] as String?,
      faculty: json['faculty'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StudentDataToJson(_$StudentData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'uid': instance.uid,
      'course': instance.course,
      'faculty': instance.faculty,
      'runtimeType': instance.$type,
    };

_$StudentError _$$StudentErrorFromJson(Map<String, dynamic> json) =>
    _$StudentError(
      errorMessage: json['errorMessage'] as String?,
      errorCode: json['errorCode'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StudentErrorToJson(_$StudentError instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'errorCode': instance.errorCode,
      'runtimeType': instance.$type,
    };
