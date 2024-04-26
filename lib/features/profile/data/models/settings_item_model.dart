import 'package:flutter/material.dart';

class SettingsItemModel {
  final String title;
  final IconData icon;
  final String? subtitle;
  final bool? tappable;

  const SettingsItemModel({
    required this.title,
    required this.icon,
    this.subtitle,
    this.tappable = true,
  });
}
