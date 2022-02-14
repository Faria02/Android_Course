import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List taskList = ['Buy some books'];
  List dateList = ['12/12/2022'];
  List timeList = ['10:00 am'];
  TextEditingController taskController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Task Manager',
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
            itemCount: taskList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(taskList[index]),
                  subtitle:
                      Text('date: ${dateList[index]} time: ${timeList[index]}'),
                  leading: CircleAvatar(
                    child: Text('${index + 1}'),
                  ),
                  trailing: Icon(Icons.check_box_outline_blank),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Add Your Task'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: taskController,
                        decoration: InputDecoration(
                          hintText: 'Add Task Here',
                          icon: Icon(Icons.title),
                        ),
                      ),
                      TextField(
                        controller: dateController,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.date_range,
                            ),
                            hintText: 'Task Date'),
                      ),
                      TextField(
                        controller: timeController,
                        decoration: InputDecoration(
                            icon: Icon(Icons.timeline), hintText: 'Task Time'),
                      )
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          taskList.add(taskController.text);
                          dateList.add(dateController.text);
                          timeList.add(timeController.text);
                          taskController.clear();
                          dateController.clear();
                          timeController.clear();
                          Navigator.pop(context);
                          setState(() {});
                        },
                        child: Text('ok')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('cancel')),
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
