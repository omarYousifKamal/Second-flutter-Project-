import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Omar Yousif Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        height: 420,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Stack(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/user.png',
                            width: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(35),
                            child: Image.asset(
                              'assets/images/iraq.png',
                              width: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Omar Yousif Kamal'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('(964)751-246-70-52'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Divider(
                thickness: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/money.png',
                    width: 45,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('Total Donations '),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    '200 \$',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        backgroundColor: Colors.orange),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/hand.png',
                    width: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('For:'),
                  ),
                  Spacer(),
                  Text('Food Aid Bucket')
                ],
              ),
            ),
            Divider(
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/calendar.png',
                    width: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text('Date'),
                  ),
                  Spacer(),
                  Text('9/3/2017')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
