// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'choice_chip.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/doctor.svg',
            width: 200,
            height: 200,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: MediaQuery.of(context).size.height * 0.18,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 9,
                    color: Color.fromARGB(255, 231, 231, 231),
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      height: 60,
                      width: 310,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: () {},
                            color: Color.fromARGB(255, 197, 197, 204),
                          ),
                          suffixIcon: Container(
                            height: 60,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 9,
                                  color: Color.fromARGB(255, 231, 231, 231),
                                  offset: Offset(2, 1),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Icon(Icons.mic),
                              onPressed: () {},
                              color: Color.fromARGB(255, 197, 197, 204),
                            ),
                          ),
                          hintText: "Search for a doctor,Symtopms, etc",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 195, 196, 197),
                              fontSize: 13),
                          filled: true,
                          fillColor: Color.fromARGB(255, 235, 235, 235),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ChoiceChipDisplay(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class NeumorphicInputField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final double bevel;
  final Offset blurOffset;
  final Color color;
  final EdgeInsets padding;
  NeumorphicInputField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.bevel = 10.0,
    this.padding = const EdgeInsets.all(5.0),
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200,
        super(key: key);

  @override
  _NeumorphicInputFieldState createState() => _NeumorphicInputFieldState();
}

class _NeumorphicInputFieldState extends State<NeumorphicInputField> {
  final bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final color = widget.color;

    return Listener(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: widget.padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.bevel * 10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _isPressed ? color : color.mix(Colors.black, .1),
                _isPressed ? color.mix(Colors.black, .05) : color,
                _isPressed ? color.mix(Colors.black, .05) : color,
                color.mix(Colors.white, _isPressed ? .2 : .5),
              ],
              stops: const [
                0.0,
                .3,
                .6,
                1.0,
              ]),
          boxShadow: _isPressed
              ? null
              : [
                  BoxShadow(
                    blurRadius: widget.bevel,
                    offset: -widget.blurOffset,
                    color: color.mix(Colors.white, .6),
                  ),
                  BoxShadow(
                    blurRadius: widget.bevel,
                    offset: widget.blurOffset,
                    color: color.mix(Colors.black, .3),
                  )
                ],
        ),
        child: TextField(
          controller: widget.textEditingController,
          onChanged: (value) {
            //Do something wi
          },
          keyboardType: TextInputType.emailAddress,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          decoration: InputDecoration(
            // prefixIcon: Icon(Icons.email),
            filled: true,
            hintText: 'Enter your email',
            hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
            fillColor: Colors.transparent,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount)!;
  }
}
