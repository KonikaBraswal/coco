import 'package:flutter/material.dart';
import 'addbank.dart';
class MyBanksPage extends StatelessWidget{
  const MyBanksPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Banks"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const AddBankPage()),
                );
                //Redirect to Add Wallet form
              }, child: const Text("Add Bank"),
              ),
              const Card(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text("Bank Name"),
                ),
              ),
            ],
          )
      ),

    );
  }
}