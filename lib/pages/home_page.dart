import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Biscoito da sorte',
          style: TextStyle(color: Colors.amber[800]),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              child: Image.asset(
                'assets/images/fortune_cookie.png',
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 100.0, right: 100.0, bottom: 50.0),
              child: Text(
                'Clique no botão para quebrar o biscoito!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.amber[800],
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              child: const Text(
                'Quebrar Biscoito',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
