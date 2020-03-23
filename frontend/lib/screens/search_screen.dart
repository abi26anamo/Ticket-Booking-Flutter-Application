import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\n you looking for?",
            style:
                Styles.headlineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          const Gap(20),
          const TicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels',),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(10),
              ),
            ),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          const AppDoubleText(
            bigText: 'Upcomimg Flights',
            smallText: "View All",
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                height: AppLayout.getHeight(425),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 1),
                    ]),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(190),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/seat.jpeg"))),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    "20% discount on the early booking og this flight.Don't miss out this chance",
                    style: Styles.headlineStyle2,
                  )
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8BB),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headlineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18),
                              )
                            ]),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: const Color(0XFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0XFFEC6545),
                    ),
                    child: Column(children: [
                      Text(
                        "Take Love",
                        style: Styles.headlineStyle2.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: 'M', style: TextStyle(fontSize: 38)),
                        TextSpan(text: 'M', style: TextStyle(fontSize: 38)),
                        TextSpan(text: 'M', style: TextStyle(fontSize: 38)),
                      ]))
                    ]),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
