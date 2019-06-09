import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image.asset('assets/ali_landscape.png'),
            Text(
              'Ali Connors',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
        IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: themeData.dividerColor,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        child: Icon(
                          Icons.call,
                          color: themeData.primaryColor,
                        ),
                        height: 60,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('(650)-555-1234'),
                                Text(
                                  'Mobile',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Icon(
                              Icons.message,
                              color: themeData.primaryColor,
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('(325)-555-6789'),
                                Text(
                                  'Work',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Icon(
                              Icons.message,
                              color: themeData.primaryColor,
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('(650)-555-6789'),
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Icon(
                              Icons.message,
                              color: themeData.primaryColor,
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      child: Icon(
                        Icons.contact_mail,
                        color: themeData.primaryColor,
                      ),
                      height: 60,
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('ali_connors@example.com')),
                        SizedBox(
                          child: Icon(
                            Icons.email,
                            color: themeData.primaryColor,
                          ),
                          height: 60,
                          width: 60,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(child: Text('ali_connors2@example.com')),
                        SizedBox(
                          child: Icon(
                            Icons.email,
                            color: themeData.primaryColor,
                          ),
                          height: 60,
                          width: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
