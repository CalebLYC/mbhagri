import 'package:flutter/material.dart';
import 'package:mbhagri/models/Localisation.dart';
import 'package:mbhagri/models/Notification.dart' as not;
import 'package:mbhagri/models/ProductType.dart';
import 'package:mbhagri/models/Produit.dart';
import 'package:mbhagri/models/User.dart';

final user =
    User(name: "SPEC OIC", email: "specoic@gmail.com", role: "Producteur");
var localisation =
    Localisation(adresse: "Kara", longitude: 11.86, latitude: 9.55);

List<Produit> produits = [
  Produit(
    id: 1,
    prix: 5000,
    image: "assets/images/products/mais.jpeg",
    description: "Sacs de 50 kg de maïs produit à Bassar",
    quantity: "3.7 tonnes",
  ),
  Produit(
    id: 2,
    prix: 7000,
    image: "assets/images/products/haricot.jpeg",
    description: "Sacs de 50 kg de haricots rouges de la région de la Kara",
    quantity: "3 tonnes",
  ),
  Produit(
    id: 3,
    prix: 10000,
    image: "assets/images/products/riz.jpeg",
    description: "Sacs de 50 kg de riz de la vallée de l'Oti",
    quantity: "890 kg",
  ),
  Produit(
    id: 4,
    prix: 2000,
    image: "assets/images/products/oignon.jpeg",
    description: "Bottes d'oignons frais de la région des Plateaux",
    quantity: "1 tonne",
  ),
  Produit(
    id: 5,
    prix: 8000,
    image: "assets/images/products/manioc.jpeg",
    description: "Sacs de 50 kg de manioc produit dans la région de la Kara",
    quantity: "7O0 Kg",
  ),
  Produit(
    id: 6,
    prix: 3000,
    image: "assets/images/products/botteManioc.jpeg",
    description: "Bottes de feuilles de manioc de la région des Plateaux",
    quantity: "320 Kg",
  ),
  Produit(
    id: 7,
    prix: 6000,
    image: "assets/images/products/mil.jpg",
    description: "Sacs de 50 kg de mil produit à Mango",
    quantity: "500 Kg",
  ),
  Produit(
    id: 8,
    prix: 4000,
    image: "assets/images/products/piment.jpeg",
    description: "Bottes de piment frais de la région des Savanes",
    quantity: "70 Kg",
  ),
  Produit(
    id: 9,
    prix: 12000,
    image: "assets/images/products/soja.jpeg",
    description: "Sacs de 50 kg de soja produit dans la région centrale",
    quantity: "50 Kg",
  ),
  Produit(
    id: 10,
    prix: 1500,
    image: "assets/images/products/persil.jpg",
    description: "Bottes de persil frais de la région des Plateaux",
    quantity: "60 Kg",
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
    "icon": Icons.local_offer,
  },
  {
    "libele": " Produits agricoles",
    "icon": Icons.agriculture,
  },
  {
    "libele": "Producteurs/Agriculteurs",
    "icon": Icons.people,
  },
  {
    "libele": "Commerçants",
    "icon": Icons.shopping_cart,
  },
  {
    "libele": "Transporteurs",
    "icon": Icons.local_shipping,
  },
  {
    "libele": "Achat",
    "icon": Icons.shopping_bag,
  },
  {
    "libele": "Entreprise",
    "icon": Icons.business,
  },
];

List<not.Notification> notifications = [
  not.Notification(
    id: 1,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
  ),
  not.Notification(
    id: 2,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
  ),
  not.Notification(
    id: 3,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
  ),
  not.Notification(
    id: 4,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
    isSeen: true,
  ),
  not.Notification(
    id: 5,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
  ),
  not.Notification(
    id: 6,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
    isSeen: true,
  ),
  not.Notification(
    id: 7,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
  ),
  not.Notification(
    id: 8,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
  ),
  not.Notification(
    id: 9,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
    isSeen: true,
  ),
  not.Notification(
    id: 10,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
    isSeen: true,
  ),
  not.Notification(
    id: 11,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
    isSeen: true,
  ),
  not.Notification(
    id: 12,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
    isSeen: true,
  ),
  not.Notification(
    id: 13,
    content:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint, qui?",
    date: DateTime.now(),
    isSeen: true,
  ),
];
