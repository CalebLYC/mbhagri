class Transporteur {
  int? id;
  int? userId;
  String description;
  String tel;
  String matriculeVehicule;

  Transporteur({
    this.id,
    this.userId,
    required this.description,
    required this.tel,
    required this.matriculeVehicule,
  });
}
