import 'package:cryptic_hunt/widgets/signup/textWidget.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  CustomAppBarWidget({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 8, 4, 12),
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.navigate_before,
                        color: Color(0xff181818),
                      ),
                    ),
                    CustomTextWidget(title, "Poppins", FontWeight.w600, 18,
                        const Color(0xff181818))
                  ],
                ),
                Container(
                  height: 1.2,
                  width: double.infinity,
                  color: Colors.black,
                )
              ],
            )));
  }
}
