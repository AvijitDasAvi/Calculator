import 'package:calculator/Button/build_button.dart';
import 'package:calculator/values/button_values.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize =
        MediaQuery.of(context).size; //using for every device screen size
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              //Output section
              Expanded(
                child: SingleChildScrollView(
                  reverse: true, //using for top to bottom
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.all(16),
                    child: const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
              ),
              Wrap(
                children: Button.buttonValues
                    .map(
                      (value) => SizedBox(
                        //same height and width for every devices
                        height: screenSize.width / 5,
                        width: screenSize.width / 4,
                        child: buildButton(value),
                      ),
                    )
                    .toList(),
              )
            ],
          )),
    );
  }
}
