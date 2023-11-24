import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Dialog Box"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              AnimatedButton(
                  text: "Warning Dialog",
                  color: Colors.orange,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: 'Warning',
                      desc:
                          "This is the descriptions of the awesome dialog Box",
                      // acttions to perform on cancel and ok buttons
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              AnimatedButton(
                  text: "Error Dialog",
                  color: Colors.red,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.topSlide,
                      showCloseIcon: true,
                      title: 'Error',
                      desc:
                          "This is the descriptions of the awesome dialog Box",
                      // acttions to perform on cancel and ok buttons
                      btnOkIcon: Icons.cancel,
                      btnOkOnPress: () {},
                      btnOkColor: Colors.red,
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              AnimatedButton(
                  text: "Question Dialog",
                  color: Colors.amber,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.question,
                      animType: AnimType.leftSlide,
                      showCloseIcon: true,
                      title: 'Question',
                      desc:
                          "This is the descriptions of the awesome dialog Box",
                      // acttions to perform on cancel and ok buttons
                      btnOkOnPress: () {},
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              AnimatedButton(
                  text: "Sucess Dialog",
                  color: Colors.green,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.bottomSlide,
                      showCloseIcon: true,
                      title: 'Success',
                      desc:
                          "This is the descriptions of the awesome dialog Box",
                      // acttions to perform on cancel and ok buttons
                      btnOkOnPress: () {},
                      btnCancelOnPress: () {},
                    ).show();
                  }),
              SizedBox(
                height: 20,
              ),
              AnimatedButton(
                  text: "Info Dialog",
                  color: Colors.blue,
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.infoReverse,
                      animType: AnimType.scale,
                      showCloseIcon: true,
                      title: 'Error',
                      desc:
                      "This is the descriptions of the awesome dialog Box",
                      // acttions to perform on cancel and ok buttons
                      btnOkIcon: Icons.info,
                      btnOkOnPress: () {},
                      btnOkColor: Colors.blue,
                    ).show();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
