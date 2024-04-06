class Festival {
  final String name;
  final String description;
  final String slogan;
  List<String> img;

  Festival({
    required this.name,
    required this.description,
    required this.slogan,
    required this.img,
  });

  factory Festival.fromMap({required Map<String, dynamic> data}) {
    return Festival(
      name: data['name'],
      description: data['description'],
      slogan: data['slogan'],
      img: data['img'],
    );
  }

  Map<String, dynamic> get toMap => {
        'name': name,
        'description': description,
        'slogan': slogan,
        'img': img,
      };
}
