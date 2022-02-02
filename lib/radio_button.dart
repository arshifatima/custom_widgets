// import 'package:flutter/material.dart';
//
//
// enum Details { Name,Nationality,Gender,Address }
// class _RadioButton extends State<MyApp>
// {
//   Details? _character = Details.Name;
//   final bool _value = false;
//   int val = -1;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.green[400],
//               title: const Text("Flutter RadioButton"),
//             ),
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 ListTile(
//                   title: const Text("Name"),
//                   leading: Radio<Details>(
//                     value: Details.Name,
//                     groupValue: _character,
//                     onChanged: (Details? value) {
//                       setState(() {
//                         _character = value;
//                       });
//                     },
//                     activeColor: Colors.blue,
//                   ),
//                 ),
//                 ListTile(
//                   title: const Text("Nationality"),
//                   leading: Radio<Details>(
//                     value: Details.Nationality,
//                     groupValue: _character,
//                     onChanged: (Details? value) {
//                       setState(() {
//                         _character = value;
//                       });
//                     },
//                     activeColor: Colors.blue,
//                   ),
//                 ),
//                 ListTile(
//                   title: const Text("Gender"),
//                   leading: Radio<Details>(
//                     value: Details.Gender,
//                     groupValue: _character,
//                     onChanged: (Details? value) {
//                       setState(() {
//                         _character = value;
//                       });
//                     },
//                     activeColor: Colors.blue,
//                   ),
//                 ),
//                 ListTile(
//                   title: const Text("Address"),
//                   leading: Radio<Details>(
//                     value: Details.Address,
//                     groupValue: _character,
//                     onChanged: (Details? value) {
//                       setState(() {
//                         _character = value;
//                       });
//                     },
//                     activeColor: Colors.blue,
//                   ),
//                 ),
//               ],
//             )
//         )
//     );
//   }
// }