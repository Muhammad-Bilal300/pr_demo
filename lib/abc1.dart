import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class ABC extends StatefulWidget {
  const ABC({Key? key}) : super(key: key);

  @override
  _ABCState createState() => _ABCState();
}

class _ABCState extends State<ABC> {
  late String stringResponse;
 
 Future apiCall() async{
   http.Response response;
   response = await http.get(Uri.parse(""));
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Practice1",style: TextStyle(fontFamily: "Roboto"),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.edit),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(Icons.delete),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width*1,
        // child: ,
      )
    );
  }
}
