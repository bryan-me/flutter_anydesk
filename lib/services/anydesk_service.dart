import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// class AnyDeskService {
//   static const platform = MethodChannel('com.example.flutter_anydesk/anydesk');

//   Future<void> _openAnyDesk() async {
//     try {
//       await platform.invokeMethod('openAnyDesk');
//     } on PlatformException catch (e) {
//       if (kDebugMode) {
//         print('Failed to open AnyDesk: ${e.message}');
//       }
//     }
//   }
// }

class AnyDeskService extends StatefulWidget {
  @override
  _AnyDeskServiceState createState() => _AnyDeskServiceState();
}

class _AnyDeskServiceState extends State<AnyDeskService> {
  static const platform = MethodChannel('com.example.flutter_anydesk/anydesk');

  Future<void> _openAnyDesk() async {
    try {
      await platform.invokeMethod('openAnyDesk');
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to open AnyDesk: ${e.message}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnyDesk Integration'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _openAnyDesk,
          child: const Icon(Icons.screenshot_outlined),
        ),
      ),
    );
  }
}

