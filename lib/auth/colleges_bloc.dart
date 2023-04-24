import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'user_bloc.dart';

FirebaseAuth auth = FirebaseAuth.instance;
GoogleSignIn googleSignIn = GoogleSignIn();

class CollegeBloc {
  CollegeBloc._();

  final _firestore = FirebaseFirestore.instance;
  factory CollegeBloc.instance() {
    return _instance ??= CollegeBloc._();
  }
  static CollegeBloc? _instance;

  Stream<List<Faculty>> get faculties => _firestore
          .collection("faculties")
          .snapshots()
          .map((QuerySnapshot snapshot) {
        final docs = snapshot.docs;
        return docs.map((DocumentSnapshot doc) {
          final data = (doc.data() ?? {}) as Map;
          return Faculty(
            name: data['name'] ?? "-",
            id: doc.id,
            courses: ((data['courses'] ?? []) as List)
                .map((e) => Course(
                      name: e['name'],
                      id: e['id'],
                    ))
                .toList(),
          );
        }).toList();
      });
}

class Faculty {
  final String name;
  final String id;
  final List<Course> courses;
  Faculty({
    required this.name,
    required this.id,
    required this.courses,
  });
}

class Course {
  final String name;
  final String id;
  Course({
    required this.name,
    required this.id,
  });
}
