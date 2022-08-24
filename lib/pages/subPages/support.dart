import 'package:attendence/components/gradient_nav.dart';
import 'package:attendence/pages/subPages/supportTicket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SupportPage extends StatefulWidget {
  SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  int defaultChoiceIndex = 1;

  final category = ["Open", "Close", "All"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportTicket()),
          )
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientAppBar(title: "Support"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Wrap(
              spacing: 8,
              children: List.generate(
                category.length,
                (index) {
                  return ChoiceChip(
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    label: Text(
                      category[index],
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white, fontSize: 14),
                    ),
                    selected: defaultChoiceIndex == index,
                    selectedColor: Colors.deepPurple,
                    onSelected: (value) {
                      setState(() {
                        defaultChoiceIndex = value ? index : defaultChoiceIndex;
                      });
                    },
                    elevation: 1,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
