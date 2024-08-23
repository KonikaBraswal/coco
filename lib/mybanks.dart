import 'package:coco/bankdetails.dart';
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
        InkWell(
          onTap:(){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const BankDetailsPage(bankName: "bankName", accountNumber: "1234365", accountType: "accountType", balance: 21435))
            );
          },
              child: const Card(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text("Bank Name"),
                ),
              ),
        ),
            ],
          )
      ),

    );
  }
}