import 'package:flutter/cupertino.dart';

class RoleModel {
  final String id;
  final String title;
  final String tagline;
  final IconData icon;
  final Color color;

  const RoleModel({
    required this.id,
    required this.title,
    required this.tagline,
    required this.icon,
    required this.color,
  });
}