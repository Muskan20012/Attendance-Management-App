import 'package:attendence/components/gradient_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

enum Priority { high, medium, low }

class SupportTicket extends StatefulWidget {
  const SupportTicket({Key? key}) : super(key: key);

  @override
  State<SupportTicket> createState() => _SupportTicketState();
}

class _SupportTicketState extends State<SupportTicket> {
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
  Priority? _character;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GradientAppBar(title: "Create Support Ticket"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Priority"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'ONE';
                          id = 1;
                        });
                      },
                    ),
                    Text(
                      'ONE',
                      style: new TextStyle(fontSize: 17.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'TWO';
                          id = 2;
                        });
                      },
                    ),
                    Text(
                      'TWO',
                      style: new TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                    Radio(
                      value: 3,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'THREE';
                          id = 3;
                        });
                      },
                    ),
                    Text(
                      'THREE',
                      style: new TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
                Text("Subject"),
                TextField(),
                Text("What Support do you need?"),
                TextFormField(
                  minLines: 3,
                  maxLines: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child:
                      Container(width: double.infinity, child: Text("Submit")),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
