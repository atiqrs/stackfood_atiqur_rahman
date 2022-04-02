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
                ? const Icon(
                    Icons.wifi_off,
                    size: 90,
                  )
                : const Icon(
                    Icons.error_outline_sharp,
                    size: 90,
                  ),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: const BorderSide(
                    color: Colors.red,
                  ),
                  shadowColor: Colors.grey,
                  elevation: 4),
              child: const Text('RETRY', style: TextStyle(color: Colors.black)),
              onPressed: onRetryPressed,
            )
          ],
        ),
      ),
    );
  }
}
