import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({ Key? key }) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  int _count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: DispText(Counter: _count.toString()),
    ),
      floatingActionButton:
        FloatingActionButton(child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _count=_count+1;
          });
        },
      ) ,
    );
  }
}

class DispText extends StatelessWidget {
  final String Counter;

  const DispText({Key? key,required this.Counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Counter);
  }
}