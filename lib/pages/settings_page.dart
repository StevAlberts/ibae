import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../widgets/bloc_provider.dart';
import '../models/cycle.dart';
import '../blocs/cycle_bloc.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _periodDays = 5;
  int _cycleDays = 25;
  int _weight = 50;
  int _height = 50;
  String _gender = 'Female';
  DateTime _lastPeriodDate;

  Cycle _newCycle;

  static const gender = [
    'Male',
    'Female',
    'Other'
  ];

  final List<DropdownMenuItem<String>> _dropMenu = gender.map(
          (String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          )
  ).toList();

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate: DateTime(2019));
    if (picked != null)
      setState(() {
        _lastPeriodDate = picked;
      });
  }

  void _pickPeriod(){
    showDialog(
        context: context,
        builder: (context){
          return NumberPickerDialog.integer(
            minValue: 0,
            maxValue: 100,
            initialIntegerValue: _periodDays,
            title: Text('Period Length'),
          );
        }
    ).then((value){
      if(value != null){
        setState(() {
          _periodDays = value;
        });
      }
    });
  }

  void _pickCycle(){
    showDialog(
        context: context,
        builder: (context){
          return NumberPickerDialog.integer(
              minValue: 0,
              maxValue: 100,
              initialIntegerValue: _cycleDays,
              title: Text('Cycle Length'),
          );
        }
    ).then((value){
      if(value != null){
        setState(() {
          _cycleDays = value;
        });
      }
    });
  }

  void _pickWeight(){
    showDialog(
        context: context,
        builder: (context){
          return NumberPickerDialog.integer(
            minValue: 0,
            maxValue: 100,
            initialIntegerValue: _weight,
            title: Text('Select Weight'),
          );
        }
    ).then((value){
      if(value != null){
        setState(() {
          _weight = value;
        });
      }
    });
  }

  void _pickHeight(){
    showDialog(
        context: context,
        builder: (context){
          return NumberPickerDialog.integer(
            minValue: 0,
            maxValue: 100,
            initialIntegerValue: _height,
            title: Text('Select Height'),
          );
        }
    ).then((value){
      if(value != null){
        setState(() {
          _height = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
//              color: Colors.purple,
            ),
            Container(
              child: ListView(children: <Widget>[
                Card(
                  elevation: 10.0,
                  margin: EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    )
                  ),
//                  color: Colors.grey[300],
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Profile',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          ListTile(
                            leading: CircleAvatar(),
                            title: Text('Stev Alberts'),
                            subtitle: Text('steven@gmail.com'),
                            onTap: () {},
                          ),
                          Text(
                            'Active Plan',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          ListTile(
                            leading: CircleAvatar(),
                            title: Text('Premium'),
                            subtitle: Text('2 Months'),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 20.0,
                  margin: EdgeInsets.all(10.0),
//                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )
                  ),
                  child: Container(
                    height: 220,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'About You',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 10.0,
                              runSpacing: 10.0,
                              runAlignment: WrapAlignment.spaceEvenly,
                              alignment: WrapAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(color: Colors.blue)
                                  ),
                                  child: InkWell(
                                      onTap: _pickWeight,
                                      splashColor: Colors.red,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Weight', style: Theme.of(context).textTheme.title,),
                                          SizedBox(height: 5.0,),
                                          Text('$_weight')
                                        ],
                                      )
                                  )
                                ),
                                Container(
                                    width: 150.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(color: Colors.blue)
                                    ),
                                    child: InkWell(
                                        onTap: _pickHeight,
                                        splashColor: Colors.red,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text('Height', style: Theme.of(context).textTheme.title,),
                                            SizedBox(height: 5.0,),
                                            Text('$_height')
                                          ],
                                        )
                                    )
                                ),
                                Container(
                                    width: 200.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(color: Colors.blue)
                                    ),
                                    child: InkWell(
                                        splashColor: Colors.red,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            ListTile(
                                              title: Text('Gender', style: Theme.of(context).textTheme.title,),
                                              trailing: DropdownButton(
                                                  value: _gender,
                                                  items: _dropMenu,
                                                  onChanged: (String value){
                                                    setState(() {
                                                      _gender = value;
                                                    });
                                                  }
                                              ),
                                            )
                                          ],
                                        )
                                    )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 20.0,
                  margin: EdgeInsets.all(10.0),
//                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(50.0)
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                        topLeft: Radius.circular(20.0)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 150,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cycle Setting',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Wrap(
                              spacing: 10.0,
                              runSpacing: 20.0,
                              runAlignment: WrapAlignment.spaceEvenly,
                              alignment: WrapAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(color: Colors.blue)
                                  ),
                                  child: InkWell(
                                    onTap: _pickCycle,
                                    splashColor: Colors.red,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Cycle Length', style: Theme.of(context).textTheme.title,),
                                        SizedBox(height: 5.0,),
                                        Text('$_cycleDays Days')
                                      ],
                                    )
                                  ),
                                ),
                                Container(
                                  width: 150.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(color: Colors.blue)
                                  ),
                                  child: InkWell(
                                      onTap: _pickPeriod,
                                      splashColor: Colors.red,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('Period Length', style: Theme.of(context).textTheme.title,),
                                          SizedBox(height: 5.0,),
                                          Text('$_periodDays Days')
                                        ],
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 20.0,
                  margin: EdgeInsets.all(10.0),
//                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Biometric and PassCode',
                            style: Theme.of(context).textTheme.headline,
                          ),
                          SwitchListTile.adaptive(
                            value: true,
                            onChanged: (value) {},
                            title: Text(
                              'Enabled',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 20.0,
                  margin: EdgeInsets.all(10.0),
//                  color: Colors.greenAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Theme',
                            style: Theme.of(context).textTheme.headline,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton.icon(
                    color: Colors.purple[100],
                    textTheme: ButtonTextTheme.accent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    elevation: 20.0,
                    splashColor: Colors.red,
                      onPressed: () {
                        print('LogOut');
                      },
                      icon: Icon(Icons.exit_to_app),
                      label: Text('Log Out',style: Theme.of(context).textTheme.headline,)
                  ),
                ),
                SizedBox(
                  height: 50.0,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

//StreamBuilder<Cycle>(
//        stream: cycleBloc.outCycle,
//        initialData: Cycle.empty(),
//        builder: (context,snapshot){
//          return Column(
//            children: <Widget>[
//              TextField(
//                onChanged: (value) => _periodDays = int.parse(value),
//                decoration: InputDecoration(
//                    hintText: 'Period days',
//                    labelText: 'Period days',
//                    icon: Icon(Icons.date_range)
//                ),
//              ),
//              TextField(
//                onChanged: (value) => _cycleDays = int.parse(value),
//                decoration: InputDecoration(
//                    hintText: 'Cycle days',
//                    labelText: 'Cycle days',
//                    icon: Icon(Icons.date_range)
//                ),
//              ),
//              TextField(
//                onTap: _selectDate,
//                decoration: InputDecoration(
//                  labelText: 'Last Cycle Date',
//                  hintText: '$_lastPeriodDate',
//                  icon: Icon(Icons.calendar_today)
//                ),
//              )
//            ],
//          );
//        },
//      ),
