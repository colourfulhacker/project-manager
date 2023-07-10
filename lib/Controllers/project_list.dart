import 'package:cloud_firestore/cloud_firestore.dart';

class ProjectNamesList {
  static var projectsNames = [];
  Future<void> addName(String name) async {
    List<String> temp = [...projectsNames];
    temp.add(name);
    projectsNames = [...temp];
    await FirebaseFirestore.instance
        .collection('project-names')
        .doc('list')
        .update({
      'names': FieldValue.arrayUnion([name])
    });
  }

  Future<List<String>> getList() async {
    final namesData = await FirebaseFirestore.instance
        .collection('project-names')
        .doc('list')
        .get();
    List<String> names = namesData.data()!['names'];
    projectsNames = [...names];
    print(names);
    return names;
  }
}
