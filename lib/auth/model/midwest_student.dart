import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'midwest_student.freezed.dart';

part 'midwest_student.g.dart';

@freezed
class MidwestStudent with _$MidwestStudent {
  const factory MidwestStudent.user({
    required String? name,
    required String? email,
    required String? photoUrl,
    required String? uid,
    required String? course,
    required String? faculty,
  }) = StudentData;

  const factory MidwestStudent.error({
    required String? errorMessage,
    required int? errorCode,
  }) = StudentError;

  factory MidwestStudent.fromFirebase({User? user}) => MidwestStudent.user(
        uid: user?.uid,
        name: user?.displayName,
        email: user?.email,
        photoUrl: user?.photoURL,
        course: null,
        faculty: null,
      );

  factory MidwestStudent.fromJson(Map<String, dynamic> json) => json.isEmpty
      ? const MidwestStudent.error(
          errorMessage: "User's is not registered",
          errorCode: 404,
        )
      : MidwestStudent.fromJson(json);
}
