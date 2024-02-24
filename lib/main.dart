import 'package:blood_pressure/table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blood_pressure/calculation.dart';

void main() => runApp(Home());

// initializing the input controllers

class UserController extends GetxController {
  final sbpController = TextEditingController();
  final dbpController = TextEditingController();

  void submitForm() {
    double dbpressure = double.tryParse(dbpController.text) ?? 0.0;
    double spressure = double.tryParse(sbpController.text) ?? 0.0;
    Get.to(() => Calculation(
          systolicPressure: spressure,
          diastolicPressure: dbpressure,
        ));
  }
}

final UserController userController =
    UserController(); // Single instance of UserController

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Blood Pressure Tracker",
              style: TextStyle(fontFamily: 'openSans')),
          centerTitle: true,
        ),

        /// The body of the home page
        body: Flex(
          direction: Axis.vertical,
          children: [
            Flexible(
              flex: 6,

              /// 60% of space
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextFormField(
                        controller: userController.sbpController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          suffixText: 'mmHg',
                          fillColor: Colors.black,
                          border: UnderlineInputBorder(),
                          labelText: 'Systolic Blood Pressure ',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 16),
                      child: TextFormField(
                        controller: userController.dbpController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          suffixText: 'mmHg',
                          border: UnderlineInputBorder(),
                          labelText: 'Diastolic Blood Pressure',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(300, 50)),
                onPressed: () {
                  // Check if the values are less than 40 for validate the input
                  if (double.parse(userController.sbpController.text) <= 40 ||
                      double.parse(userController.dbpController.text) <= 40) {
                    Get.snackbar(
                      'Check the values',
                      'cannot be possible',
                      margin: const EdgeInsets.all(8),
                      snackPosition:
                          SnackPosition.TOP, // Optional: Set the position
                      backgroundColor:const  Color.fromARGB(255, 212, 43, 43),
                      colorText: Colors.white,
                      duration: const Duration(seconds: 2),
                      maxWidth: 400,
                    );
                  } else {
                    userController
                        .submitForm(); // Using the single instance of UserController
                  }
                },
                child: const Text('Check',
                    style: TextStyle(fontSize: 20, fontFamily: 'openSans')),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.black,
                    fixedSize:const Size(300, 50)),
                onPressed: () {
                  Get.to(() => Infotable());
                },
                child: const Text('Info',
                    style: TextStyle(fontSize: 20, fontFamily: 'openSans')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
