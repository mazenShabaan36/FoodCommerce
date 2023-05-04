class languages {
   String title;
  languages({required this.title});

  factory languages.fromjson(dynamic json) {
    return languages(title: json['name'] as String);
  }
  static List<languages> languageFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return languages.fromjson(data);
    }).toList();
  }
}
