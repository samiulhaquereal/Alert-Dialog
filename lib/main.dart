import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Click'),
          onPressed: (){
            showDialog(context: context, builder: (context) =>
            AlertDialog(
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Close')),
              ],
              title: Text('Flutter App'),
              contentPadding: EdgeInsets.all(8),
              content: Text('lets chill'),
            )
            );
          },
        ),
      ),
    );
  }
}

