import 'dart:convert';

class Student {
  final String id;
  final String teamname;
  final String firstname;
  final String lastname;
  final String nokiaid;
  final String mentor;
  final String captain;
  final String vcaptaintwo;
  final String vcaptainone;
  Student({
    required this.id,
    required this.teamname,
    required this.mentor,
    required this.firstname,
    required this.lastname,
    required this.captain,
    required this.nokiaid,
    required this.vcaptaintwo,
    required this.vcaptainone,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'teamname': teamname,
      'firstname': firstname,
      'lastname': lastname,
      'nokiaid': nokiaid,
      'mentor':mentor,
      "captain":captain,
      'vcaptainone':vcaptainone,
      'vcaptaintwo': vcaptaintwo,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['_id'] ?? '',
      teamname: map['teamname'] ?? '',
      firstname: map['firstname'] ?? '',
      mentor:map['mentor'] ?? '',
      lastname: map['lastname'] ?? '',
      vcaptainone:map["vcaptainone"]??'',
      captain:map['captain']?? '',
      nokiaid: map['nokiaid'] ?? '',
      vcaptaintwo: map['vcaptaintwo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) => Student.fromMap(json.decode(source));

  Student copyWith({
    String? id,
    String? teamname,
    String? firstname,
    String? lastname,
    String? captain,
    String? vcaptainone,
    String? mentor,
    String? nokiaid,
    String? vcaptaintwo,
  }) {
    return Student(
      id: id ?? this.id,
      teamname: teamname ?? this.teamname,
      vcaptainone:vcaptainone?? this.vcaptainone,
      mentor:mentor??this.mentor,
      captain: captain??this.captain,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      nokiaid: nokiaid ?? this.nokiaid,
      vcaptaintwo: vcaptaintwo ?? this.vcaptaintwo,
    );
  }
}