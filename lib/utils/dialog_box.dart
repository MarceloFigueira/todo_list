import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            //get user input
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Adicionar nova tarefa"),
            ),
            Row(
              children: const [
                //save button

                //cancel button
              ],
            ),

            //buttons -> save + cancel
          ],
        ),
      ),
    );
  }
}
