import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => buildSheet());
            },
            child: Text("Bottom Sheet"),
          ),
        ),
      ),
    );
  }

  Widget buildSheet() {
    return DraggableScrollableSheet(
        // initialChildSize: 0.4,
        // minChildSize: 0.3,
        // maxChildSize: 0.8,
        builder: (_, controller) {
      return Container(
          height: 600,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(5)),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                // controller: controller,
                children: [
                  Text("Ali"),
                  Text("Salman"),
                  Text("Bilal"),
                  Text("Ali"),
                  Text("Ali"),
                  Text("Salman"),
                  Text("Bilal"),
                  Text("Ali"),
                  Text("Ali"),
                  TextField()
                ],
              ),
            ),
          ));
    });
  }
}
