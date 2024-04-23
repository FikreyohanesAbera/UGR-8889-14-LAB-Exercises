import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

// Define the ToDo model
class ToDo {
  final int id;
  final String title;

  ToDo({required this.id, required this.title});

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      id: json['id'],
      title: json['title'],
    );
  }
}

// Define the ToDoEvent
abstract class ToDoEvent {}

class FetchToDos extends ToDoEvent {}

// Define the ToDoState
abstract class ToDoState {}

class ToDoInitial extends ToDoState {}

class ToDoLoading extends ToDoState {}

class ToDoLoaded extends ToDoState {
  final List<ToDo> todos;
  ToDoLoaded({required this.todos});
}

class ToDoError extends ToDoState {}

// Define the ToDoBloc
class ToDoBloc extends Bloc<ToDoEvent, ToDoState> {
  ToDoBloc() : super(ToDoInitial()) {
    on<FetchToDos>((event, emit) async {
      emit(ToDoLoading());
      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body);
          final List<ToDo> todos =
              data.map((json) => ToDo.fromJson(json)).toList();
          emit(ToDoLoaded(todos: todos));
        } else {
          emit(ToDoError());
        }
      } catch (e) {
        emit(ToDoError());
      }
    });
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BlocProvider(
        create: (context) => ToDoBloc()..add(FetchToDos()),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDos'),
        backgroundColor: Colors.green[200],
      ),
      body: BlocBuilder<ToDoBloc, ToDoState>(
        builder: (context, state) {
          if (state is ToDoInitial || state is ToDoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ToDoLoaded) {
            return ListView.separated(
              separatorBuilder: ((context, index) => const SizedBox(height: 5)),
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                final todo = state.todos[index];
                return ListTile(
                  tileColor: Color.fromARGB(255, 241, 131, 174),
                  title: Text(todo.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ToDoDetailsPage(todo: todo),
                      ),
                    );
                  },
                );
              },
            );
          } else {
            return const Center(child: Text('Something went wrong!'));
          }
        },
      ),
    );
  }
}

class ToDoDetailsPage extends StatelessWidget {
  final ToDo todo;

  const ToDoDetailsPage({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.id.toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.title),
      ),
    );
  }
}
