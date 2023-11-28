import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';

class TimeItem extends StatelessWidget {
  const TimeItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          index < 10 ? "0$index:00" : "$index:00",
          style: const TextStyle(
            color: blackColor60,
            fontSize: 14,
            fontWeight: fontWeightMedium,
          ),
        ),
        Container(
          width: 260,
          height: 1,
          color: blackColor5,
        ),
        const SizedBox(
          height: 60,
        )
      ],
    );
  }
}
