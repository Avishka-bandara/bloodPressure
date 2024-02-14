import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calculation extends StatelessWidget {
  final double systolicPressure;
  final double diastolicPressure;
  late final String result;

   Calculation({
    Key? key,
    required this.systolicPressure,
    required this.diastolicPressure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String result = calculateResult();
    return Final(result: result);
  }

  String calculateResult() {
    String result;
    if ((40 <= systolicPressure && systolicPressure <= 90) &&
        (40 <= diastolicPressure && diastolicPressure <= 60)) {
      result = "Low Blood Pressure";
    } else if ((91 <= systolicPressure && systolicPressure <= 120) &&
        (61 <= diastolicPressure && diastolicPressure <= 80)) {
      result = "prehypertension";
    } else if ((121 <= systolicPressure && systolicPressure <= 140) &&
        (81 <= diastolicPressure && diastolicPressure <= 90)) {
      result = "Stage 1 Hypertension";
    } else if ((141 <= systolicPressure && systolicPressure <= 160) &&
        (91 <= diastolicPressure && diastolicPressure <= 100)) {
      result = "stage 2 Hypertension";
    } else if ((161 <= systolicPressure && systolicPressure <= 185) &&
        (101 <= diastolicPressure && diastolicPressure <= 125)) {
      result = "stage 2 Hypertension";
    } else {
      result = "Hypertensive Crisis";
    }
    return result;
  }
}

// display the result of the blood pressure
class Final extends StatelessWidget {
  final String result;

  const Final({
    Key? key,
    required this.result,
  });

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
                result,
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
