import 'package:chat/constants.dart';
import 'package:chat/widgets/left_side.dart';
import 'package:chat/widgets/main_content_mobile.dart';
import 'package:chat/widgets/nav_bar.dart';
import 'package:chat/widgets/responsive_widget.dart';
import 'package:chat/widgets/right_side_image.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double colorSpace = MediaQuery.of(context).size.width / 4;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ...createBackground(colorSpace),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
              child: Scrollbar(
                child: ResponsiveWidget(
                  web: Column(
                    children: [
                      NavBar(title: "CHAT"),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: LeftSideWeb(),
                            ),
                            const Expanded(
                              flex: 1,
                              child: MainImage(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  mobile: MainContentMobile(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> createBackground(double colorSpace) {
    return [
      Align(
        alignment: Alignment.topRight,
        child: SizedBox.fromSize(
          size: Size.fromWidth(colorSpace),
          child: Container(
            color: const Color(AppColor.primary),
          ),
        ),
      ),
    ];
  }
}
