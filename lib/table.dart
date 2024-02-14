import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Infotable extends StatelessWidget {
  const Infotable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Information Table'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      /// fisrt row of systomolic blood pressure
                      children: [
                        Container(
                          height: 50,
                          child: Text("Low",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 79, 170, 244),
                        ),
                        Container(
                          height: 50,
                          child: Text("Normal",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 98, 211, 102),
                        ),
                        Container(
                          height: 50,
                          child: Text("High",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: Colors.yellow,
                        ),
                        Container(
                            height: 50,
                            child: Text("Too High",
                                style: TextStyle(fontFamily: "openSans")),
                            alignment: Alignment.center,
                            color: Color.fromARGB(255, 227, 61, 116)),
                        Container(
                          height: 50,
                          child: Text("Dangurous",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: Color.fromARGB(255, 167, 9, 9),
                        ),
                      ],
                    ),
                    TableRow(
                      /// second row of systomolic blood pressure
                      children: <Widget>[
                        Container(
                          height: 50,
                          child: Text("40 - 90 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 79, 170, 244),
                        ),
                        Container(
                          height: 50,
                          child: Text("90 - 120 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 98, 211, 102),
                        ),
                        Container(
                          height: 50,
                          child: Text("120 - 140 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 50,
                          child: Text("140 - 160 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 227, 61, 116),
                        ),
                        Container(
                          height: 50,
                          child: Text("160 - 185 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 167, 9, 9),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Text("Systolic Blood Pressure",
                  style: TextStyle(fontFamily: "openSans")),
              const SizedBox(height: 40),

              /// second table for diastolic blood pressure

              Container(
                padding: const EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      /// fisrt row of systomolic blood pressure
                      children: <Widget>[
                        Container(
                          height: 50,
                          child: Text("Low",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 79, 170, 244),
                        ),
                        Container(
                          height: 50,
                          child: Text("Normal",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 98, 211, 102),
                        ),
                        Container(
                          height: 50,
                          child: Text("High",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: Colors.yellow,
                        ),
                        Container(
                            height: 50,
                            child: Text("Too High",
                                style: TextStyle(fontFamily: "openSans")),
                            alignment: Alignment.center,
                            color: Color.fromARGB(255, 227, 61, 116)),
                        Container(
                          height: 50,
                          child: Text("Dangurous",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: Color.fromARGB(255, 167, 9, 9),
                        ),
                      ],
                    ),
                    TableRow(
                      /// second row of systomolic blood pressure
                      children: <Widget>[
                        Container(
                          height: 50,
                          child: Text("40 - 60 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 79, 170, 244),
                        ),
                        Container(
                          height: 50,
                          child: Text("60 - 80 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 98, 211, 102),
                        ),
                        Container(
                          height: 50,
                          child: Text("80 - 90 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 50,
                          child: Text("90 - 100 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 227, 61, 116),
                        ),
                        Container(
                          height: 50,
                          child: Text("100 - 125 mmHg",
                              style: TextStyle(fontFamily: "openSans")),
                          alignment: Alignment.center,
                          color: const Color.fromARGB(255, 167, 9, 9),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              const Text("Diastolic Blood Pressure",
                  style: TextStyle(fontFamily: "openSans")),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(300, 50)),
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  'Go Back',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
