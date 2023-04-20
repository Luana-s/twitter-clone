class User {
  final int id;
  final String firstName;
  final String lastName;
  final int age;

  User({
    required this.id,
    required this.firstName, 
    required this.lastName, 
    required this.age
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      age: map['age'],
    );
  }

}