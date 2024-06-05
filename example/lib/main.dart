import 'package:flutter/material.dart';
import 'package:pm_switch/pm_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSimpleSwitched = false;
  bool isImageSwitched = false;
  bool isTextSwitched = false;
  bool isColorSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Flutter Custom Switches')),
          backgroundColor: Colors.purple[100],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Simple Switch'),
                const SizedBox(
                  height: 2,
                ),
                PMSimpleSwitch(
                  isSwitched: isSimpleSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSimpleSwitched = value;
                    });
                  },
                  activeTrackColor: Colors.green,
                  inactiveThumbColor: Colors.grey,
                ),
                const SizedBox(height: 16),
                const Text('Image Switch'),
                const SizedBox(
                  height: 2,
                ),
                ImageSwitch(
                  isSwitched: isImageSwitched,
                  onChanged: (value) {
                    setState(() {
                      isImageSwitched = value;
                    });
                  },
                  activeImage: 'assets/selected.png',
                  inactiveImage: 'assets/close.png',
                ),
                const SizedBox(height: 16),
                const Text('Text Switch'),
                const SizedBox(
                  height: 2,
                ),
                TextSwitch(
                  isSwitched: isTextSwitched,
                  onChanged: (value) {
                    setState(() {
                      isTextSwitched = value;
                    });
                  },
                  activeText: 'Active',
                  inactiveText: 'Inactive',
                  activeColor: Colors.purple[300],
                  inactiveTrackColor: Colors.grey,
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: Colors.red[300],
                ),
                const SizedBox(height: 16),
                const Text('Color Switch'),
                SizedBox(
                  height: 2,
                ),
                PMCustomColorSwitch(
                  isSwitched: isColorSwitched,
                  onChanged: (value) {
                    setState(() {
                      isColorSwitched = value;
                    });
                  },
                  activeThumbImage: const AssetImage("assets/active.png"),
                  activeTrackColor: Colors.green[800],
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.green[800],
                  inactiveThumbImage: const AssetImage("assets/inactive.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
