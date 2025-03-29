import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          MainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
            ),
          ],
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        Column(
          children: [
            _searchBar(),
            //  _todos(),
            //  _input()
          ],
        )
      ],
    );
  }

  _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          ),
        ),
      ),
    );
  }

  _todos() {
    return TodoItem(
      todo: Todo(id: "12", title: "world"),
    );
  }

  _input() {
    return Placeholder();
  }
}
