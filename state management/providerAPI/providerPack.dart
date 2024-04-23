import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ItemList(),
        child: HomeScreen(),
      ),
    );
  }
}

class Item {
  final int id;
  final String title;

  Item({required this.id, required this.title});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      title: json['title'],
    );
  }
}

class ItemList with ChangeNotifier {
  List<Item> _items = [];
  List<Item> get items => _items;

  int _nextIdToFetch = 1; // Start fetching from ID 1

  Future<void> fetchNextItem() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/$_nextIdToFetch'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final newItem = Item.fromJson(jsonData);
      _items.add(newItem);
      _nextIdToFetch++; // Increment for the next fetch
      notifyListeners();
    } else {
      throw Exception('Failed to fetch item');
    }
  }

  Future<void> _addItem(String title, String body) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
      body: json.encode({'title': title, 'body': body}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 201) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final newItem = Item.fromJson(jsonData);
      _items.add(newItem);
      notifyListeners();
    } else {
      throw Exception('Failed to add item');
    }
  }

  Future<void> addItemFromApi() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final title = jsonData['title'];
      final id = jsonData['id'];
      await _addItem(title, id); // Call _addItem with title and body from API
    } else {
      throw Exception('Failed to fetch item from API');
    }
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemList = Provider.of<ItemList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do'),
      ),
      body: itemList.items.isEmpty
          ? Center(
              child: Text(
                'Add Data',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: itemList.items.length,
              itemBuilder: (context, index) {
                final item = itemList.items[index];
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        item.id.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Divider(), // Add a divider line
                  ],
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          itemList.fetchNextItem(); // Fetch one item at a time
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
