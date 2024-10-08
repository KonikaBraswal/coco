import 'package:coco/alltransactions.dart';
import 'package:coco/mybanks.dart';
import 'package:coco/mywallets.dart';
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
      title: 'Coco',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const MyWalletsPage()),
                  );
                },
                child: const Text('My Wallets'),
            ),
            TextButton(
                onPressed: (){
                  //ADD BANKS PAGE
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const MyBanksPage()),
                  );
                },
                child: const Text('My Banks')
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> AllTransactionsPage()),
                  );
                  //ADD TRANSACTIONS PAGE
                },
                child: const Text('My Transactions')
            ),
          ],
        ),
      ),
    );
  }
}
