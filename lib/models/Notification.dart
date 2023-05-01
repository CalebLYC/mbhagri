import 'package:flutter/material.dart';

class Notification {
  int? id;
  String content;
  DateTime date;
  TimeOfDay? time;
  bool isSeen;
  int? userId;

  Notification({
    this.id,
    required this.content,
    required this.date,
    this.time,
    this.userId,
    this.isSeen = false,
  });
}
