import 'package:ecommerceapp/validators/other.dart';
import 'package:flutter/material.dart';

class ProgressDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const PopScope(
          canPop: false,
          child: Dialog(
            shape: CircleBorder(),
            child: Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static void showWithMessage(BuildContext context, {String message = ''}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Dialog(
            shape: CircleBorder(),
            child: Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Column(
                    children: [
                      CircularProgressIndicator(),
                      if (!message.isNullOrEmpty())
                        SizedBox(
                          height: 10,
                        ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
