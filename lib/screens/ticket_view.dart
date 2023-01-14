import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/thick_circular_container_for_ticket_view.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),  topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('NYC', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      ThickCircularContainer(),
                      Expanded(child: SizedBox(
                          height: 24,
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(5, (index) => Text('-', style: Styles.headLineStyle2,))
                            ,
                          ),
                        ),
                      ),
                      ThickCircularContainer(),
                      Expanded(child: Container()),
                      Text('London', style: Styles.headLineStyle3.copyWith(color: Colors.white),),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
