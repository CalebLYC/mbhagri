class Livraison {
  int? id;
  int? transporteurId;
  int? commandeId;
  String statut;

  Livraison({
    this.id,
    this.transporteurId,
    this.commandeId,
    required this.statut,
  });
}
