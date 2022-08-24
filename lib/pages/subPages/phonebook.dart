import 'package:attendence/components/gradient_nav.dart';
import 'package:attendence/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PhoneBook extends StatefulWidget {
  PhoneBook({Key? key}) : super(key: key);

  @override
  State<PhoneBook> createState() => _PhoneBookState();
}

class _PhoneBookState extends State<PhoneBook> {
  int defaultChoiceIndex = 1;

  final category = ["HR Manager", "Business Executive"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GradientAppBar(title: "Phonebook"),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.grey[400],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          Wrap(
            spacing: 8,
            children: List.generate(
              category.length,
              (index) {
                return ChoiceChip(
                  labelPadding: EdgeInsets.all(2.0),
                  label: Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      category[index],
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white, fontSize: 14),
                    ),
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
          ListTile(
            leading: CircleAvatar(),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Naveed"),
                Text(
                  "HR manager",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Naveed"),
                Text(
                  "HR manager",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Naveed"),
                Text(
                  "HR manager",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Naveed"),
                Text(
                  "HR manager",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
