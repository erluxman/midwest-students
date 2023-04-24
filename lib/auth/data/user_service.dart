import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../model/midwest_student.dart';

class UserService {
  UserService();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  FirebaseAuth get auth => FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        signOut().then((value) async {
          final result = await auth.signInWithCredential(authCredential);
          print("User signed in ${result.user?.displayName}");
        });
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  Stream<MidwestStudent?> get currentUser {
    return auth.authStateChanges().map((event) {
      print("abc");
      return event;
    }).asyncMap((User? user) async {
      if (user == null) {
        return null;
      } else {
        try {
          DocumentSnapshot studentSnapshot =
              await firestore.collection('users').doc(user.uid).get();
          final userData = studentSnapshot.data() as Map;
          return MidwestStudent(
            uid: user.uid,
            name: userData['name'] ?? user.displayName,
            email: user.email,
            photoUrl: user.photoURL,
            course: userData['course'] ?? "",
            faculty: userData['faculty'] ?? "",
          );
        } catch (e) {
          return MidwestStudent(
            uid: user.uid,
            name: user.displayName,
            email: user.email,
            photoUrl: user.photoURL,
            course: null,
            faculty: null,
          );
        }
      }
    });
  }

  Future<void> signOut() async {
    await auth.signOut();
  }

  Future<void> setCourse({
    required String userId,
    required String course,
    required String faculty,
  }) async {
    await firestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .set({'course': course, 'faculty': faculty}, SetOptions(merge: true));
  }
}
