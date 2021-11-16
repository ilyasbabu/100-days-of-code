import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(List<String> args) {
  runApp(myApp1());
}

class myApp1 extends StatelessWidget {
  const myApp1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.amberAccent
      ),
      
    );
  }
}
class HomeScreen extends StatefulWidget {
  HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _iptextController = TextEditingController();
  var _dispText="show";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30
        ),
        child: Container(
          color: Colors.black38,
          child: Column(
            children: [
              TextField(
                controller: _iptextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "type something!",

                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    print(_iptextController.text);
                  });
                  
                }, child: Text("click here")),
              Text(_iptextController.text)
            ],
          ),
        ),
      ),
      
    );
  }
}