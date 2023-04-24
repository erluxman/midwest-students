import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../model/midwest_student.dart';

class UserService {
  UserService();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  FirebaseAuth get auth => FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  DocumentReference userRef(String userId) => firestore.doc("users/$userId");

  Future<MidwestStudent> signInWithGoogle() async {
    const errorUser = MidwestStudent.error(
      errorMessage: "Failed To Login with Google",
      errorCode: 401,
    );
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);

        final result = await auth.signInWithCredential(authCredential);
        if (result.user == null) {
          return errorUser;
        }
        return userFromFirebase(result.user!);
      } else {
        return errorUser;
      }
    } on FirebaseAuthException catch (e) {
      print(e);
      return errorUser;
    }
  }

  Future<MidwestStudent> userFromFirebase(User user) async {
    final StudentData userFromFirebase =
        MidwestStudent.fromFirebase(user: user) as StudentData;
    final MidwestStudent fireStoreUser =
        await fetchUserDetails((userFromFirebase).uid!);
    if (fireStoreUser is StudentData) {
      return fireStoreUser.copyWith(
        email: fireStoreUser.email ?? userFromFirebase.email,
        name: fireStoreUser.name ?? userFromFirebase.name,
        photoUrl: fireStoreUser.photoUrl ?? userFromFirebase.photoUrl,
        uid: fireStoreUser.uid ?? userFromFirebase.uid,
      );
    } else {
      return userFromFirebase;
    }
  }

  Future<MidwestStudent> fetchUserDetails(String userId) async {
    final userSnap = await userRef(userId).get();
    final Map<String, dynamic> userData = ((userSnap.data() ?? {}) as Map)
        .map((key, value) => MapEntry(key.toString(), value));
    return MidwestStudent.fromJson(userData);
  }

  Future<MidwestStudent?> get currentUser async {
    final user = auth.currentUser;
    if (user == null) {
      return null;
    }
    return userFromFirebase(user);
  }

  Future<void> signOut() async {
    await googleSignIn.signOut();
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
