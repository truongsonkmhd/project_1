// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// class DemoBuildContext extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Demo BuildContext"),
//         ),
//         body: Column(
//           children: [
//             OngBa(
//               child: ChaMe(
//                 child: ConTrai(),
//               ),
//             ),
//             OngBa(
//               child: ChaMe(
//                 child: ConGai(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OngBa extends StatelessWidget {
//   Widget child;
//
//   OngBa({required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     );
//   }
// }
//
// class ChaMe extends StatelessWidget {
//   Widget child;
//
//   ChaMe({required this.child});
//
//   String layTenConTrai() {
//     return "Hưng";
//   }
//
//   String layTenConGai() {
//     return "Alice";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: child,
//     );
//   }
// }
//
// class ConTrai extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //ChaMe chaMe = context.findAncestorWidgetOfExactType<ChaMe>();
//     return Container(
//       child: Text(chaMe.layTenConTrai()),
//     );
//   }
// }
//
// class ConGai extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     ChaMe chaMe = context.findAncestorWidgetOfExactType<ChaMe>();
//     return Container(
//       child: Text(chaMe.layTenConGai()),
//     );
//   }
// }
