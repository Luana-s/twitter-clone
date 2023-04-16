class Friend {
  final String firstName;
  final String lastName;
  final String gender;
  final String message;
  final String username;
  final String imageURL;

  Friend({
    required this.firstName, 
    required this.lastName,
    required this.gender,  
    required this.username, 
    required this.message,
    required this.imageURL
  });

  factory Friend.fromMap(Map<String, dynamic> map) {
    return Friend(
      firstName: map['firstName'],
      lastName: map['lastName'],
      gender: map['gender'],
      message: 'Curso de Flutter promovido pelo IFAL.',
      username: map['username'],
      imageURL: map['image']
    );
  }

  get name => null;

}