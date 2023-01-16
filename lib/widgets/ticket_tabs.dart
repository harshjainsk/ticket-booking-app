import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          // Airline Tickets
          Container(
            width: size.width*0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(16))),
              color: Colors.white,
            ),
            child: Text(firstTab, style: Styles.headLineStyle3,textAlign: TextAlign.center,),
          ),
          Spacer(),
          Container(
            width: size.width*0.44,
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(16))),
              color: Colors.transparent,
            ),
            child: Text(secondTab, style: Styles.headLineStyle3,textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
