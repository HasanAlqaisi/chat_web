import 'package:chat/constants.dart';
import 'package:chat/controller.dart';
import 'package:flutter/material.dart';

class LeftSideWeb extends StatelessWidget {
  final Controller _controller = Controller();

  LeftSideWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60),
        const Text(
          "* ALL-IN-ON MESSANGER",
          style: TextStyle(
            color: Color(0xFFC4A191),
            letterSpacing: 3.5,
          ),
        ),
        const SizedBox(height: 20),
        const Text.rich(
          TextSpan(children: [
            TextSpan(
                text: "Simplify",
                style: TextStyle(
                  color: Color(AppColor.primary),
                )),
            TextSpan(text: " Your\nmessaging\napps"),
          ]),
          style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        const Flexible(
            child: Text(
          AppText.chatDescription,
          textAlign: TextAlign.justify,
          style: TextStyle(height: 2),
        )),
        const SizedBox(height: 40),
        MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          onPressed: () async {
            final isLaunched = await _controller.onDownload();
            if (!isLaunched) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      title: Text("An error"),
                      content: Text("couldn't open the link"),
                    );
                  });
            }
          },
          color: const Color(AppColor.primary),
          textColor: Colors.white,
          child: const Text("Download For Free"),
        )
      ],
    );
  }
}
