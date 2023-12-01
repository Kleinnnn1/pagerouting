import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  final TextEditingController userCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextFormField(
            controller: userCon,
            decoration: const InputDecoration(
              labelText: 'username',
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              String username = userCon.text;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(username: username),
                ),
              );
            },
            child: const Text('login'),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String username;

  const SecondPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: Text('Username: $username'), // Display username on SecondPage
      ),
    );
  }
}
