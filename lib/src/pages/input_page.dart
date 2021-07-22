import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Text'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        children: [_createInput(), Divider(), _createPerson()],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Leather ${_name.length}'),
          hintText: 'Person Name',
          labelText: 'Name',
          helperText: 'Only name',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
        ),
        onChanged: (value) {
          setState(() {
            _name = value;
          });
        });
  }

  Widget _createPerson() {
    return ListTile(title: Text('Name: $_name'));
  }
}
