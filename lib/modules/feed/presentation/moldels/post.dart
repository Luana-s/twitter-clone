class Post {
  final String id;
  final String userId;
  final String title;
  final String body;
  final String? media; 
  final DateTime date;

  Post({
    required this.id, 
    required this.userId, 
    required this.title,
    required this.body,
    this.media,
    required this.date,
  });

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'].toString(),
      body: map['body'],
      userId: map['userId'].toString(),
      title: map['title'],
      date: DateTime.now(),
      media: 'https://www.materialize.pro/wp-content/uploads/2021/10/FLUTTER-scaled.jpg',
    );
  }

}