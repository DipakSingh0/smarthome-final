import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/dashboard_page.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  final List<TextEditingController> controllers = List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500], // Set the color of the app bar to blue[500]

        title: const Text('Verification Code'),
      ),
      body: Container(
        color: Colors.blue[200], // Set the color of the body to blue[200]
        
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter Verification Code',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              // Six boxes for verification code entry
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  6,
                  (index) => SizedBox(
                    width: 40,
                    height: 40,
                    child: TextField(
                      controller: controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), // Allow only numbers
                      ],
                      maxLength: 1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onChanged: (value) {
                        if (value.length == 1 && index < controllers.length - 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Confirm Code button
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.black87,
              //   ),
              //   onPressed: () {
              //     // Implement code confirmation logic
              //     String verificationCode = controllers.map((controller) => controller.text).join();
              //     print('Verification Code: $verificationCode');
              //   },
              //   child: const Text('Confirm Code',
              //     style: TextStyle(
              //       color: Colors.white,
              //     ),),
              // ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                ),
                onPressed: () {
                  
                  String verificationCode = controllers.map((controller) => controller.text).join();
                  // ignore: avoid_print
                  print('Verification Code: $verificationCode');

                  // Navigate to the Dashboard page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DashboardPage()),
                  );
                },
                child: const Text(
                  'Confirm Code',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
