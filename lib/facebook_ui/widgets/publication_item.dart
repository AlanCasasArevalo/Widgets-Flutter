import 'package:flutter/material.dart';

import '../../models/publication.dart';

class PublicationItem extends StatelessWidget {

  final Publication publication;

  const PublicationItem({super.key, required this.publication});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.red,
    );
  }
}