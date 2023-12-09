import 'package:flutter/material.dart';
import 'package:task_management/constants/style.dart';

class PickTime extends StatefulWidget {
  const PickTime(
      {super.key,
      this.title = "",
      required this.onTimeSelected,
      this.fillColor = whiteColor});

  final String title;
  final void Function(TimeOfDay selectedTime) onTimeSelected;
  final Color fillColor;

  @override
  State<PickTime> createState() => _PickTimeState();
}

class _PickTimeState extends State<PickTime> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: fontWeightMedium,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: widget.fillColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Text(
                  selectedTime.format(context),
                  style: const TextStyle(fontSize: 16),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.access_time),
                  onPressed: () {
                    showTimePicker(
                      context: context,
                      initialTime: selectedTime,
                    ).then((pickedTime) {
                      if (pickedTime != null && pickedTime != selectedTime) {
                        setState(() {
                          selectedTime = pickedTime;
                        });
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
