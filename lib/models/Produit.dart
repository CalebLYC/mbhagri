class Produit {
  int? id;
  double prix;
  String image;
  String description;
  String quantity;
  int? userId;

  Produit({
    this.id,
    required this.prix,
    required this.image,
    required this.description,
    required this.quantity,
    this.userId,
  });
}
