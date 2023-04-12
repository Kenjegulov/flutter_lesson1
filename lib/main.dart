import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove debug from the screen
      debugShowCheckedModeBanner: false,
      // Title бул биздин баракчабыздын аты
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Caн 0 ->(index)
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          // Output to the screen
          "Тапшырма 1",
          // give color to the above text
          style: TextStyle(color: Colors.black),
        ),
        // exception shadow
        elevation: 0,
      ),
      body: Padding(
        // экрандын кырларына аралык беруу(horizontal)
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                child: Center(
                    child: Text(
                  "Сан: $index",
                  style: TextStyle(fontSize: 20),
                )),
                // Кооздо(Укаршение)
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              ),
              // Container мене Row дун ортосундагы аралык
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    // onPressed кыймыл-аракет
                    onPressed: () {
                      // Абалын озгортуу
                      setState(() {
                        // Минус кнопкасын басканда index 1 ге азаят
                        index--;
                      });
                    },
                    // Экранга минус кнопкасын чыгаруу
                    child: const Icon(Icons.remove),
                  ),
                  // SixeBox эки кнопканын ортосундагы аралык
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    // onPressed кыймыл-аракет
                    onPressed: () {
                      // Абалын озгортуу
                      setState(() {
                        // Плюс кнопкасын басканда index 1 ге кобойот
                        index++;
                      });
                    },
                    // Экранга плюс белгисин чыгарат
                    child: const Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
