class Credentials { 

  Credentials({
    required this.name,
    required this.username, 
    required this.email, 
    required this.password
  });  

  final String name;
  final String username;
  final String email;
  final String password;

  Map<String, dynamic> toMap() {
    return {
      "username": username,
      "name": name,
      "password": password,
      "email": email
    };
  }

}