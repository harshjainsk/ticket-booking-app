import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThickCircularContainer extends StatelessWidget {
  final bool? isColor;
  const ThickCircularContainer({Key? key, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor==null?Colors.white:Color(0XFF8ACCF7)),
      ),
    );
  }
}
