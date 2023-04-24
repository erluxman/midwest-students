import 'package:freezed_annotation/freezed_annotation.dart';

part 'midwest_student.freezed.dart';

part 'midwest_student.g.dart';

@freezed
class MidwestStudent with _$MidwestStudent {
  const factory MidwestStudent({
    required String? name,
    required String? email,
    required String? photoUrl,
    required String? uid,
    required String? course,
    required String? faculty,
  }) = _MidwestStudent;

  factory MidwestStudent.fromJson(Map<String, dynamic> json) =>
      _$MidwestStudentFromJson(json);
}
