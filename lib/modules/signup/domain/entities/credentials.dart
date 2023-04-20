class Credentials {
  final String firstName;
  final String lastName;
  final String email;
  final int age;

  Credentials({required this.firstName, required this.lastName,required  this.email, this.age=25});
  
  Map<String, dynamic> toMap() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "age": age,
      "email": email
    };
  }

  
}