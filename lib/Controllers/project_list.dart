class ProjectNamesList {
  static var projectsNames = [];
  void addName(String name) {
    List<String> temp = [...projectsNames];
    temp.add(name);
    projectsNames = [...temp];
  }
}
