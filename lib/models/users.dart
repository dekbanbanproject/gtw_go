import 'dart:convert';

class UsersModel {
  String id;
  String name;
  String username;
  String password;
  String email;
  String emailverifiedat;
  String remembertoken;
  String status;
  String personid;
  String createdat;
  String updatedat;
  UsersModel({
    required this.id,
    required this.name,
    required this.username,
    required this.password,
    required this.email,
    required this.emailverifiedat,
    required this.remembertoken,
    required this.status,
    required this.personid,
    required this.createdat,
    required this.updatedat,
  });

  UsersModel copyWith({
    String? id,
    String? name,
    String? username,
    String? password,
    String? email,
    String? emailverifiedat,
    String? remembertoken,
    String? status,
    String? personid,
    String? createdat,
    String? updatedat,
  }) {
    return UsersModel(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      emailverifiedat: emailverifiedat ?? this.emailverifiedat,
      remembertoken: remembertoken ?? this.remembertoken,
      status: status ?? this.status,
      personid: personid ?? this.personid,
      createdat: createdat ?? this.createdat,
      updatedat: updatedat ?? this.updatedat,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'password': password,
      'email': email,
      'emailverifiedat': emailverifiedat,
      'remembertoken': remembertoken,
      'status': status,
      'personid': personid,
      'createdat': createdat,
      'updatedat': updatedat,
    };
  }

  factory UsersModel.fromMap(Map<String, dynamic> map) {
    return UsersModel(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      password: map['password'],
      email: map['email'],
      emailverifiedat: map['emailverifiedat'],
      remembertoken: map['remembertoken'],
      status: map['status'],
      personid: map['personid'],
      createdat: map['createdat'],
      updatedat: map['updatedat'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UsersModel.fromJson(String source) => UsersModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UsersModel(id: $id, name: $name, username: $username, password: $password, email: $email, emailverifiedat: $emailverifiedat, remembertoken: $remembertoken, status: $status, personid: $personid, createdat: $createdat, updatedat: $updatedat)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UsersModel &&
      other.id == id &&
      other.name == name &&
      other.username == username &&
      other.password == password &&
      other.email == email &&
      other.emailverifiedat == emailverifiedat &&
      other.remembertoken == remembertoken &&
      other.status == status &&
      other.personid == personid &&
      other.createdat == createdat &&
      other.updatedat == updatedat;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      password.hashCode ^
      email.hashCode ^
      emailverifiedat.hashCode ^
      remembertoken.hashCode ^
      status.hashCode ^
      personid.hashCode ^
      createdat.hashCode ^
      updatedat.hashCode;
  }
}
