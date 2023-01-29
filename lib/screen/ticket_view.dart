import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:planebooking/appWidgets/tick_container.dart';
import 'package:planebooking/utils/app_layout.dart';
import 'package:planebooking/utils/app_styles.dart';

class ticketView extends StatelessWidget {
  const ticketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: MyStyles.orangeColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((21)),
                    topRight: Radius.circular(21))),
            padding: EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "NYC",
                    style:
                        MyStyles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  TickContainer(),
                  Expanded(
                    child: SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        builder: (BuildContext, BoxConstraints) {
                          print("the width is");
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              5,
                              (index) => Text("_"),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  TickContainer(),
                  Expanded(child: Container()),
                  Text(
                    "London",
                    style:
                        MyStyles.headLineStyle3.copyWith(color: Colors.white),
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
