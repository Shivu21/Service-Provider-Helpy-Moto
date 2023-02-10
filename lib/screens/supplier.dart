import 'package:flutter/material.dart';

class Supplier extends StatefulWidget {
  const Supplier({Key? key}) : super(key: key);

  @override
  State<Supplier> createState() => _SupplierState();
}

class _SupplierState extends State<Supplier> {
   final _formKey = GlobalKey<FormState>();
  late String _name;
  late int _age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Example'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
              onSaved: (value) => _name = value!,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Vehicle Name'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an Name of Your Vechicle';
                }
                return null;
              },
              onSaved: (value) => _age = int.parse(value!),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an age';
                }
                return null;
              },
              onSaved: (value) => _age = int.parse(value!),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an age';
                }
                return null;
              },
              onSaved: (value) => _age = int.parse(value!),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an age';
                }
                return null;
              },
              onSaved: (value) => _age = int.parse(value!),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an age';
                }
                return null;
              },
              onSaved: (value) => _age = int.parse(value!),
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Save the data to a database or send it to a server here
                  print('Name: $_name, Age: $_age');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
