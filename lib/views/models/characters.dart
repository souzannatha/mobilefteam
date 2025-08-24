class CharacterModel {
  final int id;
  final String name;
  final String status;
  final String species;
  final String image;

  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.image,
  });

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      id: map['id'],
      name: map['name'],
      status: map['status'],
      species: map['species'],
      image: map['image'],
    );
  }
}
