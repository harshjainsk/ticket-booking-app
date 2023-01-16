import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/widgets/thick_circular_container_for_ticket_view.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.90,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // Showing the blue part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799) :Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),  topRight: Radius.circular(AppLayout.getHeight(21)))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('${ticket['from']['code']}',
                        style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickCircularContainer(isColor: true,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                            height: AppLayout.getHeight(24),
                            child: Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(5, (index) => Text('-', style: Styles.headLineStyle2.copyWith(color: isColor==null?Colors.white:Colors.grey.shade200),))
                              ,
                            ),
                          ),
                            Center(
                              child: Transform.rotate(angle:1.5,
                                  child:Icon(Icons.local_airport_rounded,
                                    color: isColor==null?Colors.white:Color(0xFF8ACCF7),)
                              ),
                            ),

                          ],
                        ),
                      ),
                      ThickCircularContainer(isColor: true,),
                      Expanded(child: Container()),
                      Text('${ticket['to']['code']}', style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),

                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text('${ticket['from']['name']}', style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                      ),
                      Text('${ticket['flying_time']}', style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text('${ticket['to']['name']}', textAlign: TextAlign.end,style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      )
                    ],
                  )
                ],
              ),
            ),

            //Showing the orange part of ticket
            Container(
              color: isColor==null?Color(0xFFF37B67):Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?Colors.white:Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                        )
                      ),

                    )
                  ),
                  Expanded(child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12)),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: isColor==null?Colors.white:Colors.grey.shade300,
                              ),
                            ),
                          )
                          ),
                        );
                      },

                      ),
                  ),
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(10),
                    height: AppLayout.getHeight(20),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null?Colors.white:Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft: Radius.circular(AppLayout.getHeight(10))
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor==null?Color(0xFFF37B67):Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  bottomRight: Radius.circular(AppLayout.getHeight(21))
                )
              ),
              padding: EdgeInsets.only(left: AppLayout.getHeight(16),top: AppLayout.getHeight(10),right: AppLayout.getHeight(16),bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${ticket['date']}', style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                          const Gap(5),
                          Text('Date', style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('${ticket['departure_time']}', style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                          const Gap(5),
                          Text('Departure Time', style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${ticket['number']}', style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                          const Gap(5),
                          Text('Number', style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
