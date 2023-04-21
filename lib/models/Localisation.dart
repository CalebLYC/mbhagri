class Localisation {
  int? id;
  int? producteurId;
  String adresse;
  double longitude;
  double latitude;

  Localisation({
    this.id,
    this.producteurId,
    required this.adresse,
    required this.longitude,
    required this.latitude,
  });
}
