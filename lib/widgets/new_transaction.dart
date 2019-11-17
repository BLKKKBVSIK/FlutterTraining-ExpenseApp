import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amout'),
                    controller: amountController,
                  ),
                  RaisedButton(
                    color: Colors.lime[100],
                    child: Text("Add"),
                    onPressed: () {
                      addTx(titleController.text, double.parse(amountController.text));
                    },
                  )
                ],
              ),
            ),
          ) ;
  }
}