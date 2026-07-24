import 'package:flutter/material.dart';
import 'package:my_app/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<TodoProvider>().todos;

    return Scaffold(
      appBar: AppBar(
        title: Consumer<TodoProvider>(
          builder: (, provider, _) {
            return Text(
              "Todos (${provider.completedCount}/${provider.todos.length})",
            );
          },
        ),

        actions: [
          GestureDetector(
            onTap: () {
              context.read<TodoProvider>().clearList();
            },
            child: Icon(Icons.close),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),

            child: Row(
              children: [
                Expanded(child: TextField(controller: _controller)),

                IconButton(
                  icon: const Icon(Icons.add),

                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      context.read<TodoProvider>().addTodo(_controller.text);

                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: todos.length,

              itemBuilder: (_, index) {
                final todo = todos[index];

                return CheckboxListTile(
                  title: Text(todo.title),

                  value: todo.isCompleted,

                  onChanged: (_) {
                    context.read<TodoProvider>().toggleTodo(todo.id);
                  },

                  secondary: IconButton(
                    icon: const Icon(Icons.delete),

                    onPressed: () {
                      context.read<TodoProvider>().removeTodo(todo.id);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }