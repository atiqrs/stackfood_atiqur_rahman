import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String errorMessage;

  final VoidCallback onRetryPressed;

  const ErrorPage({Key? key, required this.errorMessage, required this.onRetryPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            errorMessage == 'Error During Communication: \nNo Internet connection'
                ? Icon(
                    Icons.wifi_off,
                    size: 90,
                  )
                : Icon(
                    Icons.error_outline_sharp,
                    size: 90,
                  ),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(
                    color: Colors.red,
                  ),
                  shadowColor: Colors.grey,
                  elevation: 4),
              child: Text('RETRY', style: TextStyle(color: Colors.black)),
              onPressed: onRetryPressed,
            )
          ],
        ),
      ),
    );
  }
}
