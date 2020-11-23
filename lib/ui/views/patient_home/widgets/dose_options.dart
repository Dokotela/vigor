import 'package:flutter/material.dart';

abstract class DoseOptions {
  static Widget open() => Container(
        color: Colors.grey[100],
        child: Text('\n'),
      );

  static Widget due() => Container(
        color: Colors.grey[100],
        child: Icon(Icons.access_time, color: Colors.orange, size: 24),
      );

  static Widget completed() => Container(
        color: Colors.grey[100],
        child: Icon(Icons.check_circle, color: Colors.green, size: 24),
      );

  static Widget overdue() => Container(
        color: Colors.grey[100],
        child: Icon(Icons.warning, color: Colors.red, size: 24),
      );

  static Widget na() => Container(
        color: Colors.black,
        child: Text('\n'),
      );

  static Widget possible() => Container(
        color: Colors.grey[400],
        child: Text('\n'),
      );
}
