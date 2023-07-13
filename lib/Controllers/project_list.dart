import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectNamesList {
  static var projectNames = [];
  static Future<void> addName(String name) async {
    await FirebaseFirestore.instance
        .collection('project-names')
        .doc('list')
        .update({
      'names': FieldValue.arrayUnion([name])
    });
  }

  static Future<void> removeName(String name) async {
    await FirebaseFirestore.instance
        .collection('project-names')
        .doc('list')
        .update({
      'names': FieldValue.arrayRemove([name])
    });
  }

  static Future<void> getList() async {
    final namesData = await FirebaseFirestore.instance
        .collection('project-names')
        .doc('list')
        .get();
    final names = namesData.data()!['names'];

    projectNames = [...names];
    // return names;
    print(projectNames);
  }
}

class UsernameList {
  static var usernames = [];
  static Future<void> addName(String name) async {
    await FirebaseFirestore.instance
        .collection('user-names')
        .doc('list')
        .update({
      'names': FieldValue.arrayUnion([name])
    });
  }

  static Future<void> removeName(String name) async {
    await FirebaseFirestore.instance
        .collection('user-names')
        .doc('list')
        .update({
      'names': FieldValue.arrayRemove([name])
    });
  }

  static Future<void> getList() async {
    final namesData = await FirebaseFirestore.instance
        .collection('user-names')
        .doc('list')
        .get();
    final names = namesData.data()!['names'];

    usernames = [...names];
    // return names;
    print(usernames);
  }
}
