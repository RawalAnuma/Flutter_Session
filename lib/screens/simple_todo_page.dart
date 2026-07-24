import 'package:flutter/material.dart';
import 'package:my_app/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class SimpleTodoPage extends StatefulWidget {
  const SimpleTodoPage({super.key});

  @override
  State<SimpleTodoPage> createState() => _SimpleTodoPageState();
}

class _SimpleTodoPageState extends State<SimpleTodoPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoProvider>();

    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 179, 141, 225),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Simple Todo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: const Color(0xff7A38D8),
      ),

      body: Column(
        children: [
          const SizedBox(height: 20),

          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: provider.todos.length,
              itemBuilder: (context, index) {
                final todo = provider.todos[index];

                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xff7A38D8),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        value: todo.isCompleted,
                        activeColor: Colors.white,
                        checkColor: Colors.deepPurple,
                        onChanged: (_) {
                          provider.toggleTodo(todo.id);
                        },
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),

                      Expanded(
                        child: Text(
                          todo.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: todo.isCompleted
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,

                            decorationColor: Colors.white,
                            decorationThickness: 2.5,
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          provider.removeTodo(todo.id);
                        },
                        icon: const Icon(Icons.delete, color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: "Enter Todo",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.deepPurple),

                    onPressed: () {
                      if (_controller.text.trim().isEmpty) return;

                      provider.addTodo(_controller.text.trim());

                      _controller.clear();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
