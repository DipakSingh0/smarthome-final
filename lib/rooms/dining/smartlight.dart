import 'package:flutter/material.dart';
import 'package:vs_scrollbar/vs_scrollbar.dart';


void main() {
  runApp(
    const MaterialApp(
      home: SmartLightPage(),
    ),
  );
}

class SmartLightPage extends StatefulWidget {
  const SmartLightPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SmartLightPageState createState() => _SmartLightPageState();
}

class _SmartLightPageState extends State<SmartLightPage> {
  final ScrollController _scrollController = ScrollController();
  double brightnessLevel = 50.0; // Initial brightness level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Light Control'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          controller: _scrollController, // Use the same ScrollController for both ListView and VsScrollbar
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  Icons.light,
                  size: 100,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Street Light Status: ON',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Brightness Level: ${brightnessLevel.toInt()}%',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              VsScrollbar(
                controller: _scrollController,
                showTrackOnHover: true,
                isAlwaysShown: true,
                scrollbarFadeDuration: const Duration(milliseconds: 500),
                scrollbarTimeToFade: const Duration(milliseconds: 800),
                style: VsScrollbarStyle(
                  hoverThickness: 10.0,
                  radius: const Radius.circular(10),
                  thickness: 10.0,
                  color: Colors.purple.shade900,
                ),
                child: Slider(
                  value: brightnessLevel,
                  onChanged: (double value) {
                    setState(() {
                      brightnessLevel = value;
                    });
                  },
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: brightnessLevel.toInt().toString(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add logic to control street light brightness
                  // You can use the brightnessLevel value to set the desired brightness.
                  // For example, you can call a function to send a request to your IoT device.
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Apply Brightness',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

