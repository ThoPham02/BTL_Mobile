// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/constants/style.dart';
import 'package:task_management/models/card_entity.dart';

class DropDownCard extends StatefulWidget {
  const DropDownCard(
      {Key? key,
      required this.cards,
      required this.onCardSelect,
      this.fillColor = whiteColor})
      : super(key: key);

  final List<CardEntity> cards;
  final void Function(String selectCardID) onCardSelect;
  final Color fillColor;

  @override
  State<DropDownCard> createState() => _DropDownCardState();
}

class _DropDownCardState extends State<DropDownCard> {
  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    if (widget.cards.isNotEmpty) {
      dropdownValue = widget.cards.first.cardID!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Select a Group Task", // Set your title here
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/vectors/required_icon.svg",
                  color: redColor,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: widget.fillColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SizedBox(
                  width: 200,
                  height: 46,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });

                      if (value != null) {
                        widget.onCardSelect(value);
                      }
                    },
                    items: widget.cards
                        .map<DropdownMenuItem<String>>((CardEntity value) {
                      return DropdownMenuItem<String>(
                        value: value.cardID,
                        child: SizedBox(
                          width: 175,
                          child: Text(
                            value.name ?? "",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: fontWeightRegular,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: blackColor5,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  "assets/vectors/plus_icon.svg",
                  color: mainColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
