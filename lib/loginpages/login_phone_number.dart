// import 'package:flutter/material.dart';
// import 'package:new_app/loginpages/verification_code.dart';
// // import '../pages/verification_code.dart'; // Import the new page

// class LoginPhoneNumber extends StatelessWidget {
//   const LoginPhoneNumber({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue[500],
//         title: const Text(
//           'Login',
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Container(
//         color: Colors.blue[200],
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 'Login with Mobile Number',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const TextField(
//                 keyboardType: TextInputType.phone,
//                 decoration: InputDecoration(
//                   labelText: 'Enter your Mobile Number',
//                   labelStyle: TextStyle(color: Colors.black),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.black,
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.black,
//                     ),
//                   ),
//                   filled: true,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.black,
//                 ),
//                 onPressed: () {
//                   // Navigate to the verification code page
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => VerificationCode()),
//                   );
//                 },
//                 child: const Text(
//                   'Send Verification Code',
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
