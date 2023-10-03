import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? id;
  final String fullName;
  final String email;
  final String password;
  final String phoneNumber;

  const UserModel({
    this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.phoneNumber,
  });

  
  toJson(){
    return{
      "FullName" : fullName,
      "Email" : email,
      "Password" : password,
      "PhoneNumber" : phoneNumber,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    final data = document.data()!;
    return UserModel(
      id: document.id,
      email: data["Email"],
      password: data["Password"],
      fullName: data["FullName"],
      phoneNumber: data["Phone"],
    );
  }

}