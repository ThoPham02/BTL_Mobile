import 'package:flutter/material.dart';
import 'package:task_management/models/card_entity.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.card});

  final CardEntity card;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(84, 134, 233, 1),
      ),
      margin: const EdgeInsets.only(right: 8),
      width: 152,
      height: 200,
    );
  }
}
