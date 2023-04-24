// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:midwest/auth/data/user_service.dart';

import 'model/midwest_student.dart';

final userProvider = StateNotifierProvider<UserBloc, MidwestStudent?>((ref) {
  return UserBloc(ref.read(repoProvider));
});

final repoProvider = Provider<UserService>((ref) => UserService());

class UserBloc extends StateNotifier<MidwestStudent?> {
  UserBloc(this.authRepo) : super(null);

  final UserService authRepo;

  Future<void> fetchUser() async {
    final usr = await authRepo.fetchUser();
    if (usr != null) {
      state = usr;
    }
  }

  void setCourse({required String course, required String faculty}) {
    if (state == null || state is StudentError) return;
    state = (state as StudentData).copyWith(course: course, faculty: faculty);

    authRepo.setCourse(
        userId: (state as StudentData).uid!, course: course, faculty: faculty);
  }

  Future<void> signInWithGoogle() async {
    final usr = await authRepo.signInWithGoogle();
    if (usr is StudentData) {
      state = usr;
    }
  }

  Future<void> signOut() async {
    state = null;
    return authRepo.signOut();
  }
}





// class UserBloc {
//   final auth = FirebaseAuth.instance;
//   final googleSignIn = GoogleSignIn();
//   final _firestore = FirebaseFirestore.instance;

//   UserBloc._();

//   static UserBloc? _instance;

//   factory UserBloc.instance() {
//     return _instance ??= UserBloc._();
//   }



//   googleSignOut() async {
//     await auth.signOut();
//     await googleSignIn.signOut();
//   }

//   void setCourse({required String course, required String faculty}) {
//     //We update the state of the user in backend
//     //when its successfully updated in backend
//     //We update the current state of the user
//   }
// }


