import 'package:flutter/material.dart';
import 'package:new_app/rooms/livingroom/smartfan.dart';
import 'package:new_app/rooms/livingroom/smartlight.dart';


class DiningRoom extends StatelessWidget {
  const DiningRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Dining Room'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SmartLightButton(),

                SizedBox(width: 20.0), // Adjust the spacing between buttons

                FanButton(),
              ],
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TvButton(),
                
                SizedBox(width: 20.0),

                AcButton(),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class SmartLightButton extends StatefulWidget {
  const SmartLightButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SmartLightButtonState createState() => _SmartLightButtonState();
}

class _SmartLightButtonState extends State<SmartLightButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add a delay and tap animation before navigating to another page
        _handleTap();
      },
      child: Container(
        height: 155,
        width: 140,
        decoration: BoxDecoration(
          color: isSwitched ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.light,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeColor: Colors.blue.shade100,
                    inactiveThumbColor: Colors.black,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'SmartLight',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleTap() {
    // Perform the tap animation
    
    // Add a delay before navigating to another page
    Future.delayed(const Duration(milliseconds: 100), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SmartLightPage(),
        ),
      );
    });
  }
}

class FanButton extends StatefulWidget {
  const FanButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FanButtonState createState() => _FanButtonState();
}

class _FanButtonState extends State<FanButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add a delay and tap animation before navigating to another page
        _handleTap();
      },
      child: Container(
        height: 155,
        width: 140,
        decoration: BoxDecoration(
          color: isSwitched ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.wind_power,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeColor: Colors.blue.shade100,
                    inactiveThumbColor: Colors.black,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'SmartFan',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleTap() {
    // Perform the tap animation
    
    // Add a delay before navigating to another page
    Future.delayed(const Duration(milliseconds: 100), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SmartFanPage(),
        ),
      );
    });
  }
}

class TvButton extends StatefulWidget {
  const TvButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TvButtonState createState() => _TvButtonState();
}

class _TvButtonState extends State<TvButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 140,
      decoration: BoxDecoration(
        color: isSwitched ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.tv,
                  size: 50,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeColor: Colors.blue.shade100,
                  inactiveThumbColor: Colors.black,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Smart TV',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AcButton extends StatefulWidget {
  const AcButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AcButtonState createState() => _AcButtonState();
}

class _AcButtonState extends State<AcButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 140,
      decoration: BoxDecoration(
        color: isSwitched ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.ac_unit,
                  size: 50,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                  activeColor: Colors.blue.shade100,
                  inactiveThumbColor: Colors.black,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'AirConditioner',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
