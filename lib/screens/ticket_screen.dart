import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';
import 'package:ticket_booking_app/utils/ticket_info_list.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text('Tickets', style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0],isColor: true),
              ),
              SizedBox(height: 1,),
              Container(
                padding: EdgeInsets.symmetric(horizontal:15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal:15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(firstText: 'Flutter DB',secondText: 'Passenger',alignment: CrossAxisAlignment.start,),
                        ColumnLayout(firstText: '5221 478566',secondText: 'Passport',alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    Gap(15),
                    LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                          ),
                        );
                      },

                    ),
                    Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(firstText: '0055 444 77147',secondText: 'Number of E-ticket',alignment: CrossAxisAlignment.start,),
                        ColumnLayout(firstText: 'B2SG28',secondText: 'Booking code',alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    Gap(15),
                    LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                              ),
                            ),
                          )
                          ),
                        );
                      },

                    ),
                    Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png',scale: 11,),
                                Text(' *** 2462',style: Styles.headLineStyle3,)
                              ],
                            ),
                            Gap(5),
                            Text('Payment method', style: Styles.headLineStyle4,)
                          ],
                        ),
                        ColumnLayout(firstText: '\$249.99',secondText: 'Price',alignment: CrossAxisAlignment.end,),

                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ]
      ),
    );
  }
}
