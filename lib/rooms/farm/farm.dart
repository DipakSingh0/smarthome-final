import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

class Farm extends StatelessWidget {
  const Farm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Farm'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrettyGauge(
                  gaugeSize: 175,
                  segments: [
                    GaugeSegment('Low', 20, Colors.red),
                    GaugeSegment('Medium', 40, Colors.orange),
                    GaugeSegment('High', 40, Colors.green),
                  ],
                  currentValue: 60,
                  displayWidget: const Text('Humidity', style: TextStyle(fontSize: 12)),
                ),
                const SizedBox(width: 10),
                PrettyGauge(
                  gaugeSize: 175,
                  segments: [
                    GaugeSegment('Critically Low', 10, Colors.red),
                    GaugeSegment('Low', 20, Colors.orange),
                    GaugeSegment('Medium', 20, Colors.yellow),
                    GaugeSegment('High', 50, Colors.green),
                  ],
                  currentValue: 45,
                  needleColor: Colors.red,
                  showMarkers: true,
                  displayWidget: const Text('Moisture', style: TextStyle(fontSize: 12)),
                ),
              ],
            ),

            const SizedBox(height: 20.0),

            PrettyGauge(
              gaugeSize: 175,
              segments: [
                GaugeSegment('Low', 20, Colors.blue[200]!),
                GaugeSegment('Medium', 40, Colors.blue),
                GaugeSegment('High', 40, Colors.blue[800]!),
              ],
              currentValue: 70,
              displayWidget: const Text('Temp', style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}