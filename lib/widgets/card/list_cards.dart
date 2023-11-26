import 'package:flutter/material.dart';
import 'package:task_management/models/task.dart';
import 'package:task_management/widgets/card/task_card.dart';

class ListCard extends StatefulWidget {
  final List<TaskEntity> listCard;

  int get count => listCard.length;

  const ListCard({Key? key, required this.listCard}) : super(key: key);

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return widget.count > 0
        ? ListView.builder(
            itemCount: widget.count,
            itemBuilder: (BuildContext context, int index) {
              TaskEntity task = widget.listCard[index];
              return TaskCard(task: task);
            },
          )
        : const SizedBox(
            height: 200,
            child: Center(child: Text('You don\'t have any tasks today.')),
          );
  }
}
