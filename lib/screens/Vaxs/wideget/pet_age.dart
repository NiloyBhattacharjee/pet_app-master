import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:numberpicker/numberpicker.dart';

class petAge extends StatefulWidget {
  const petAge({Key? key}) : super(key: key);

  @override
  State<petAge> createState() => _petAgeState();
}

class _petAgeState extends State<petAge> {
  int prospectiveage = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
            text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(
                text: 'Enter the Age of Your Pet',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        )),
        NumberPicker(
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(15)),
            value: prospectiveage,
            minValue: 1,
            maxValue: 20,
            onChanged: (value) {
              setState(() => prospectiveage = value);
            }),
      ],
    );
  }
}
