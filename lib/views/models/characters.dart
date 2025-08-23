class Characters {
  final int id;
  final String name;
  final String status;
  final String species;
  final String image;

  Characters({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.image,
  });

  factory Characters.fromJson(Map<String, dynamic> json){
    return Characters(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      image: json['image'],
    );
  }

}
