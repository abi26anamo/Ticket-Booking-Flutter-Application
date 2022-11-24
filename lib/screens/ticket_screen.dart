import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/Layout_builder.dart';
import '../widgets/tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headlineStyle,
            ),
            Gap(AppLayout.getHeight(20)),
            const TicketTabs(
              firstTab: 'Upcoming',
              secondTab: 'Previous',
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(15),
              ),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: 'FlutterDB',
                      secondText: 'Passenger',
                      isColor: false,
                    ),
                    const AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: '5221 364860',
                      secondText: 'Passport',
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const LayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: '36738 28274478',
                      secondText: 'Numberof E-ticket',
                      isColor: false,
                    ),
                    const AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: 'B2SG28',
                      secondText: 'Booking code',
                      isColor: false,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                const LayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                  width: 5,
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/avisa.png",
                              scale: 6,
                            ),
                            Text(
                              "*** 2462",
                              style: Styles.headlineStyle3,
                            )
                          ],
                        ),
                        const Gap(5),
                        Text(
                          "Payment method",
                          style: Styles.headlineStyle4,
                        )
                      ],
                    ),
                    const AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: '\$249,99',
                      secondText: 'Price',
                      isColor: false,
                    ),
                  ],
                ),
              ]),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)))),
              margin: EdgeInsets.only(left: AppLayout.getHeight(15), right: AppLayout.getHeight(15)),
              padding: EdgeInsets.only(top: AppLayout.getHeight(20), bottom: AppLayout.getHeight(20)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(AppLayout.getHeight(15))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(AppLayout.getHeight(15))),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: "https://github.com/martinovovo",
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              
            ),
            Gap(AppLayout.getHeight(20)),
            TicketView(
                ticket: ticketList[0],
              
              ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(21),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2)
              
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(21),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2)
              
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        )
      ]),
    );
  }
}
