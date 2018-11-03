import 'package:flutter/material.dart';
import 'package:openapi/api.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter with OpenAPI Generator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _employeeName = '';
  String _employeeId = '';

  void _callWebApi() {
    setState(() {
      var client = new EmployeeApi();
      var result = client.getEmployee(this._employeeId);
      result.then(
        (employee) => this._employeeName = employee.firstName + ' ' + employee.lastName
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('please input employee id'),
            new TextField(
              onChanged: (v) => this._employeeId = v,
            ),
            new RaisedButton(
              child: new Text('call WebAPI'),
              onPressed: _callWebApi,
            ),
            new Text(
              this._employeeName,
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}
