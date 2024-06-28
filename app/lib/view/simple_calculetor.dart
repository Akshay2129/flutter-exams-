import 'package:flutter/material.dart';

class SimpleCalculetor extends StatefulWidget {
  const SimpleCalculetor({super.key});

  @override
  State<SimpleCalculetor> createState() => _SimpleCalculetorState();
}

class _SimpleCalculetorState extends State<SimpleCalculetor> {
  final TextEditingController firstNumberController =
      TextEditingController(text: "");
  final TextEditingController secondNumberController =
      TextEditingController(text: "");
  final TextEditingController operatorController =
      TextEditingController(text: "");
  int? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Simple Calculator"),
          Text("Enter a number"),
          TextField(
            controller: firstNumberController,
            decoration: InputDecoration(
              hintText: "Enter a number",
              border: OutlineInputBorder(),
            ),
          ),
          Text("Enter another number"),
          TextField(
            controller: secondNumberController,
            decoration: InputDecoration(
              hintText: "Enter a number",
              border: OutlineInputBorder(),
            ),
          ),
          Text("Enter an operator"),
          TextField(
            controller: operatorController,
            decoration: InputDecoration(
              hintText: "Enter an operator",
              border: OutlineInputBorder(),
            ),
          ),
          // Text(
          //   "Result: ${logic(
          //     firstNumberController,
          //     secondNumberController,
          //     operatorController,
          //   )}",
          //   style: TextStyle(color: Colors.red),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _add(operatorController);
                  },
                  child: Text("+")),
              ElevatedButton(
                  onPressed: () {
                    _si(operatorController);
                  },
                  child: Text("-")),
              ElevatedButton(
                  onPressed: () {
                    _model(operatorController);
                  },
                  child: Text("%")),
              ElevatedButton(
                  onPressed: () {
                    _multi(operatorController);
                  },
                  child: Text("*")),
            ],
          ),
          Text("${result}")
        ],
      ),
    );
  }

  _add(operatorController) {
    if (operatorController.text == "+") {
      return setState(() {
        result = int.parse(firstNumberController.text) +
            int.parse(secondNumberController.text);
      });
    }
  }

  _si(operatorController) {
    if (operatorController.text == "-") {
      return setState(() {
        result = int.parse(firstNumberController.text) -
            int.parse(secondNumberController.text);
      });
    }
  }

  _model(operatorController) {
    if (operatorController.text == "%") {
      return setState(() {
        result = int.parse(firstNumberController.text) %
            int.parse(secondNumberController.text);
      });
    }
  }

  _multi(operatorController) {
    if (operatorController.text == "*") {
      return setState(() {
        result = int.parse(firstNumberController.text) *
            int.parse(secondNumberController.text);
      });
    }
  }
}
