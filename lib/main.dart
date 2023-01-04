import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoIndicator(),
    );
  }
}

class CupertinoIndicator extends StatefulWidget {
  const CupertinoIndicator({super.key});

  @override
  State<CupertinoIndicator> createState() => _CupertinoIndicatorState();
}

class _CupertinoIndicatorState extends State<CupertinoIndicator> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
    navigationBar: const CupertinoNavigationBar(
      backgroundColor: Colors.green,
      middle: Text('CupertinoActivityIndicator',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CupertinoActivityIndicator(
            radius: 30.0, 
            color: Color.fromARGB(255, 7, 212, 58),
            animating: true,
          ),
          SizedBox(height: 10),
          Text(
            'radius: 20.0\ncolor: CupertinoColors.activeGreen\nanimating: true',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }
}