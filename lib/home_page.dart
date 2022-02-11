import 'package:flutter/material.dart';
import 'package:practice_1/page_one.dart';
import 'package:practice_1/page_two.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  String imgUrl =
      "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg";

  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          //color: Colors.amber,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  onDetailsPressed: () {
                    isExpand = !isExpand;
                    setState(() {});
                  },
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imgUrl),
                    ),
                  ],
                  otherAccountsPicturesSize: Size.square(35),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pro_pic.jpg'),
                  ),
                  accountName: Text('Faria Sabrin'),
                  accountEmail: Text('faria@gmail.com')),
              isExpand ? MenuList() : CustomContainer(),
            ],
          ),
        ),
      ),
      appBar: AppBar(),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/pro_pic.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Faria Sabrin Jui',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Festive',
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              color: Colors.pink,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Row(
                children: [
                  Icon(Icons.mail),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('abc@gmail.com'),
                ],
              ),
            ),
            Container(
              color: Colors.pink,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Row(
                children: [
                  Icon(Icons.phone),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('01717761693'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PageOne();
                    }));
                  },
                  child: Text('Page One'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageTwo()));
                  },
                  child: Text('Page Two'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home Page'),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Icon(Icons.adb_outlined),
          title: Text('About Page'),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Icon(Icons.portable_wifi_off_outlined),
          title: Text('Profile Page'),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings Page'),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Icon(Icons.contact_page),
          title: Text('Contact Page'),
          trailing: Icon(Icons.edit),
        ),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      //color: Colors.amber,
      child: Text(
        'My Custom\nContainer',
        textAlign: TextAlign.center,
      ),
    );
  }
}
