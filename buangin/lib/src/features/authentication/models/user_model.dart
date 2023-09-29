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


}