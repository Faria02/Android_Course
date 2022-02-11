import 'package:flutter/material.dart';
import 'package:practice_1/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List containerList = [CustomContainer1(), CustomContainer2()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Page One'),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: containerList[index],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    index = 0;
                    setState(() {});
                  },
                  child: Text('Container One'),
                ),
                ElevatedButton(
                  onPressed: () {
                    index = 1;
                    setState(() {});
                  },
                  child: Text('Container Two'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer1 extends StatelessWidget {
  const CustomContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      color: Colors.amber,
      child: Text(
        'My Custom\nContainer',
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      color: Colors.indigo,
      child: Text(
        'My Custom\nContainer2',
        textAlign: TextAlign.center,
      ),
    );
  }
}
