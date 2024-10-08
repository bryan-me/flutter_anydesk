// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_anydesk/services/anydesk_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AnyDeskService anyDeskService = AnyDeskService();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnyDesk Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AnyDeskService(),
    );
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('AnyDesk Integration'),
  //     ),
  //     body: Center(
  //       child: ElevatedButton(
  //         onPressed: _openAnyDesk,
  //         child: Text('Open AnyDesk'),
  //       ),
  //     ),
  //   );
  // }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
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

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AnyDesk Integration'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _openAnyDesk,
//           child: Text('Open AnyDesk'),
//         ),
//       ),
//     );
//   }
// }