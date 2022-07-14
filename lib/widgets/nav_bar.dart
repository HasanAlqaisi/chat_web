import 'package:chat/constants.dart';
import 'package:chat/controller.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final String title;
  final Controller _controller = Controller();

  NavBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(AppColor.primary),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            side: const BorderSide(color: Color(AppColor.secondary)),
          ),
          child: const Text(
            "DOWNLOAD NOW",
            style: TextStyle(color: Color(AppColor.secondary)),
          ),
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
        ),
      ],
    );
  }
}
