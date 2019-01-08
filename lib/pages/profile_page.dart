import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

import '../widgets/animated_chart.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('iBAe'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.chat_bubble_outline),
                onPressed: () {
                  print('dfdfdf');
                })
          ],
        ),
        body: Stack(
          children: <Widget>[
            Arc(
              height: 30.0,
              arcType: ArcType.CONVEX,
              child: Container(
                height: 350.0,
                width: 400.0,
                color: Theme.of(context).accentColor,
                child: Column(
                  children: <Widget>[
                    Expanded(child: AnimatedChart()),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.yellowAccent,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SafeArea(
              bottom: true,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10.0),
                crossAxisSpacing: 4.0,
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                children: <Widget>[
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                          topRight: Radius.circular(50.0), 
                          topLeft: Radius.circular(20.0)
                        )
                    ),
                    color: Colors.blueGrey,
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                          topLeft: Radius.circular(20.0)
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(20.0)
                        )
                    ),
                    color: Colors.blueGrey,
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.blue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
                          )
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            topLeft: Radius.circular(20.0)
                        )
                    ),
                    color: Colors.blueGrey,
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            topLeft: Radius.circular(20.0)
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(20.0)
                        )
                    ),
                    color: Colors.blueGrey,
                    child: Container(
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
                          )
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            topLeft: Radius.circular(20.0)
                        )
                    ),
                    color: Colors.blueGrey,
                    child: Container(
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            topLeft: Radius.circular(20.0)
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(20.0)
                        )
                    ),
                    color: Colors.blueGrey,
                    child: Container(
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
