import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calculation extends StatefulWidget {
  final double systolicPressure;
  final double diastolicPressure;

   Calculation({
    Key? key,
    required this.systolicPressure,
    required this.diastolicPressure,
  }) : super(key: key);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  late final String result;

  @override
  Widget build(BuildContext context) {
    String result = calculateResult();
    return Final(result: result);
  }

  String calculateResult() {
    String result;
    if ((40 <= widget.systolicPressure && widget.systolicPressure <= 90) &&
        (40 <= widget.diastolicPressure && widget.diastolicPressure <= 60)) {
      result = "Low Blood Pressure";
    } else if ((91 <= widget.systolicPressure && widget.systolicPressure <= 120) &&
        (61 <= widget.diastolicPressure && widget.diastolicPressure <= 80)) {
      result = "prehypertension";
    } else if ((121 <= widget.systolicPressure && widget.systolicPressure <= 140) &&
        (81 <= widget.diastolicPressure && widget.diastolicPressure <= 90)) {
      result = "Stage 1 Hypertension";
    } else if ((141 <= widget.systolicPressure && widget.systolicPressure <= 160) &&
        (91 <= widget.diastolicPressure && widget.diastolicPressure <= 100)) {
      result = "stage 2 Hypertension";
    } else if ((161 <= widget.systolicPressure && widget.systolicPressure <= 185) &&
        (101 <= widget.diastolicPressure && widget.diastolicPressure <= 125)) {
      result = "stage 2 Hypertension";
    } else {
      result = "Hypertensive Crisis";
    }
    return result;
  }
}

// display the result of the blood pressure
class Final extends StatefulWidget {
  final String result;

  const Final({
    Key? key,
    required this.result,
  });

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Done", style: TextStyle(fontFamily: 'openSans')),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Display the Blood Pressure is norml or not

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text("See The Result",
                style: TextStyle(fontSize: 30, fontFamily: 'openSans')),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: 450,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  width: 2,
                ),
              ),
              child: Text(
                widget.result,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.center,
            ),

            /// Go back button to go back to the main.dart
           const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  foregroundColor: Colors.black,
                  fixedSize: const Size(300, 50)),
              onPressed: () {
                Get.back();
              },
              child: const Text('Go Back',
                  style: TextStyle(fontSize: 20, fontFamily: 'openSans')),
            ),
          ],
        ),
      ),
    );
  }
}
