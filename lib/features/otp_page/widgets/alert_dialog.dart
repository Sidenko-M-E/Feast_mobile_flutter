import 'package:feast_mobile_email/features/otp_page/bloc/otp_bloc.dart';
import 'package:flutter/material.dart';

class OtpAlertDialog extends StatelessWidget {
  const OtpAlertDialog({
    required this.state,
    super.key,
  });

  final OtpStateAlert state;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      backgroundColor: Color.fromARGB(254, 238, 248, 255),
      title: Text(state.alertTitle),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      content: Text((state).alertContent),
      contentTextStyle: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context, 'OK');
            },
            child: const Text(
              "ОК",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            )),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}