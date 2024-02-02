import 'package:flutter/material.dart';
import 'package:new_app/rooms/kitchen/smartlight1.dart';
import 'package:new_app/rooms/kitchen/smartlight2.dart';
// import 'package:new_app/rooms/kitchen/smartlight2.dart';
import 'package:new_app/rooms/livingroom/smartfan.dart';
// import 'package:new_app/rooms/diningroom.dart';

class KitchenRoom extends StatelessWidget {
  const KitchenRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Kitchen'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SmartLightButton2(),

                SizedBox(width: 20.0), // Adjust the spacing between buttons
                
                SmartLightButton1(),

                
              ],
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                FanButton(),
                
                SizedBox(width: 20.0),

                FridgeButton(),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class SmartLightButton1 extends StatefulWidget {
  const SmartLightButton1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SmartLightButton1State createState() => _SmartLightButton1State();
}

class _SmartLightButton1State extends State<SmartLightButton1> {
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
                'SmartLight2',
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
          builder: (context) => const SmartLight1Page(),
        ),
      );
    });
  }
}


class SmartLightButton2 extends StatefulWidget {
  const SmartLightButton2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SmartLightButton2State createState() => _SmartLightButton2State();
}

class _SmartLightButton2State extends State<SmartLightButton2> {
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
                'SmartLight1',
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
          builder: (context) => const SmartLight2Page(),
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
                'Ventillator',
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


class FridgeButton extends StatefulWidget {
  const FridgeButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FridgeButtonState createState() => _FridgeButtonState();
}

class _FridgeButtonState extends State<FridgeButton> {
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
                  Icons.kitchen,
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
              'Fridge',
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
