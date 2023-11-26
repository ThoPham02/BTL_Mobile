import 'package:flutter/material.dart';
import 'package:task_management/models/card.dart';
import 'package:task_management/widgets/card/task_card.dart';

class ListCard extends StatefulWidget {
  final List<CardEntity> listCard;

  int get count => listCard.length;

  const ListCard({Key? key, required this.listCard}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return widget.count > 0
        ? ListView.builder(
            itemCount: widget.count,
            itemBuilder: (BuildContext context, int index) {
              CardEntity card = widget.listCard[index];
              return CardItem(card: card);
            },
          )
        : const SizedBox(
            height: 200,
            child: Center(child: Text('You don\'t have any tasks today.')),
          );
  }
}
