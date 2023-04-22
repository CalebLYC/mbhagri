import 'package:flutter/material.dart';
import 'package:mbhagri/models/ProductType.dart';
import 'package:mbhagri/models/Produit.dart';
import 'package:mbhagri/models/User.dart';

final user =
    User(name: "SPEC OIC", email: "specoic@gmail.com", role: "Producteur");

List<Produit> produits = [
  Produit(
    id: 1,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 2,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 3,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 4,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 5,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 6,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 7,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 8,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 9,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
  Produit(
    id: 10,
    prix: 300000,
    image: "assets/images/types/cereales.webp",
    description: "description",
    quantity: "",
  ),
];

List<ProductType> types = [
  ProductType(
    id: 1,
    image: "assets/images/types/cereales.webp",
    libele: "Céréales",
    description: "description",
  ),
  ProductType(
    id: 2,
    image: "assets/images/types/elevages.jpeg",
    libele: "Produits d'élevages",
    description: "description",
  ),
  ProductType(
    id: 3,
    image: "assets/images/types/fruits.webp",
    libele: "Fruits",
    description: "description",
  ),
  ProductType(
    id: 4,
    image: "assets/images/types/tubercules.jpg",
    libele: "Tubercules",
    description: "description",
  ),
];

final List<Map<String, dynamic>> headItems = [
  {
    "libele": " Offres",
    "icon": Icons.drive_eta,
  },
  {
    "libele": " Produits agricoles",
    "icon": Icons.drive_eta,
  },
  {
    "libele": "Producteurs/Agriculteurs",
    "icon": Icons.drive_eta,
  },
  {
    "libele": "Commerçants",
    "icon": Icons.drive_eta,
  },
  {
    "libele": "Transporteurs",
    "icon": Icons.drive_eta,
  },
  {
    "libele": "Achat",
    "icon": Icons.drive_eta,
  },
  {
    "libele": "Entreprise",
    "icon": Icons.drive_eta,
  },
];
