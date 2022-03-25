import 'package:flutter/material.dart';

class ChoiceChipDisplay extends StatefulWidget {
  const ChoiceChipDisplay({Key? key}) : super(key: key);
  @override
  _ChoiceChipDisplayState createState() => _ChoiceChipDisplayState();
}

class _ChoiceChipDisplayState extends State<ChoiceChipDisplay> {
  List<String> chipList = [
    "Dental Care",
    "Eye",
    "Pregancy",
    "Migraine",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ChoiceChipWidget(chipList),
      ],
    );
  }
}

class ChoiceChipWidget extends StatefulWidget {
  final List<String> reportList;

  const ChoiceChipWidget(this.reportList, {Key? key}) : super(key: key);

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  String selectedChoice = 'Dental Care';
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }

  _buildChoiceList() {
    List<Widget> choices = [];
    for (var item in widget.reportList) {
      choices.add(Container(
        padding: const EdgeInsets.only(right: 5),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: TextStyle(
              color: selectedChoice == item
                  ? const Color(0xFF9146ff)
                  : const Color(0xFF9146ff),
              fontSize: 12.0,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          selectedColor: const Color.fromARGB(48, 186, 144, 248),
          selected: selectedChoice == item,
          onSelected: (selected) {
            setState(() {
              selectedChoice = item;
            });
          },
        ),
      ));
    }
    return choices;
  }
}
