import 'package:flutter/material.dart';
import 'package:sqflite_todo/utils/database_utils.dart';
import 'package:sqflite_todo/ui/home.dart';

class NoDoItem extends StatelessWidget
{
  static const String keyItemName = "item_name";
  static const String keyDateCreated = "date_created";
  static const String keyId = "id";

  String _itemName;
  String _dateCreated;
  int _id;

  NoDoItem(this._itemName, this._dateCreated);

  NoDoItem.map(dynamic obj) {
    this._itemName = obj[keyItemName];
    this._dateCreated = obj[keyDateCreated];
    this._id = obj[keyId];
  }

  String get itemName => _itemName;

  String get dateCreated => _dateCreated;

  int get id => _id;

  Map<String, dynamic> toMap() {
    Map map = new Map<String, dynamic>();
    map[keyItemName] = _itemName;
    map[keyDateCreated] = _dateCreated;
    if (_id != null) {
      map[keyId] = _id;
    }
    return map;
  }

  NoDoItem.fromMap(Map<String, dynamic> map) {
    this._itemName = map[keyItemName];
    this._dateCreated = map[keyDateCreated];
    this._id = map[keyId];
  }

  @override
  Widget build(BuildContext context) {


    return new ListTile(
      leading: new CircleAvatar(
        child: new Text(
          _itemName[0],
          style: new TextStyle(color: Colors.white),
        ),
      ),
      title: new Text(_itemName),
      subtitle: new Text(_dateCreated),

    );
  }

  void deleteItem(int id) async {
    DatabaseHelper db = new DatabaseHelper();
    int rowsDeleted = await db.deleteItem(id);
    print(rowsDeleted);




  }
}

