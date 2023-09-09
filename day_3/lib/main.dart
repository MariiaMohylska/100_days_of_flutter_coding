import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('TODO list'),
          ),
          body: ToDoList()),
    );
  }
}

class ToDo {
  final String id;
  final String name;
  bool done;

  ToDo({required this.id, required this.name, this.done = false});
}

class ToDoList extends StatefulWidget {
  final List<ToDo> todos = [];

  ToDoList({super.key});

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.add),
          title: TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: 'Add...'),
            onSubmitted: (_) => setState(() {
              widget.todos
                  .add(ToDo(id: const Uuid().v4(), name: _controller.text));
              _controller.clear();
            }),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.todos.length,
            itemBuilder: (context, index) {
              final item = widget.todos[index];
              final done = item.done;

              return Dismissible(
                key: ValueKey(item.id),
                onDismissed: (_) {
                  setState(() {
                    widget.todos.removeAt(index);
                  });
                },
                child: ListTile(
                  leading: Icon(
                    done ? Icons.done : Icons.circle_outlined,
                    color: done ? Colors.grey : Colors.black,
                  ),
                  title: Text(
                    item.name,
                    style: TextStyle(
                      color: done ? Colors.grey : Colors.black,
                      decoration: done ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  onTap: () => setState(() {
                    item.done = !item.done;
                  }),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
