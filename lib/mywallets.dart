import 'package:flutter/material.dart';
import 'addwallet.dart';
class MyWalletsPage extends StatelessWidget{
  const MyWalletsPage({super.key});
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("My Wallets"),
    ),
    body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const AddWalletPage()),
              );
              //Redirect to Add Wallet form
            }, child: const Text("Add Wallet"),
            ),
            const Card(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Text("Wallet Name"),
              ),
            ),
            ],
      )
    ),

  );
}
}