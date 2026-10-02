import 'package:flutter/rendering.dart';

class GuestBookMessage {
  GuestBookMessage({
    required this.name,
    required this.message,
    required this.color,
  });

  final String name;
  final String message;
  final Color color;
}
