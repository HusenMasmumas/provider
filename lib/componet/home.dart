import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testter/provider/providerhome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
        builder: (context, value, child) =>  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: MediaQuery.of(context).padding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Value : "+value.check.toString()),
            ElevatedButton(
              child: Text('Woolha.com'),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              ),
              onPressed: () {
               setState(() {
                 Provider.of<HomeProvider>(context,
                     listen: false)
                     .value(value.check+1);

               });
              },

            )

              ],
            ),
          ),
        ),
      ),
        ),
    );
  }
}

