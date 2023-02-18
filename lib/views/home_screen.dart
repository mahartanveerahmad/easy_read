import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _fontsize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                maxLines: null,
                style: TextStyle(
                  fontSize: _fontsize,
                ),
              ),
            ),
            Slider(
                min: 30,
                max: 200,
                value: _fontsize,
                onChanged: (newValue) {
                  setState(() {
                    _fontsize = newValue;
                  });
                })
          ],
        ),
      ),
    );
  }
}
