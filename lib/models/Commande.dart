class Commande {
  int? id;
  int? produitId;
  String quantity;
  int? producteurId;

  Commande({
    this.id,
    this.produitId,
    required this.quantity,
    this.producteurId,
  });
}
