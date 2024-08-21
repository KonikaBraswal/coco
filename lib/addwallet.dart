import 'package:flutter/material.dart';
import 'mywallets.dart';
class AddWalletPage extends StatelessWidget{
  const AddWalletPage({super.key});

  @override

  Widget build(BuildContext context) {
    final _formKey=GlobalKey<FormState>();
  return Scaffold(
    appBar: AppBar(
      title: const Text("Add Wallet"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Wallet Name",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Please enter valid Wallet Name";
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Wallet Bank",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Please enter valid Wallet Bank";
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Wallet Type",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Please enter valid Wallet Type";
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Wallet Initial Money",
                border: OutlineInputBorder(),
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Please enter valid Wallet Money";
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            
            ElevatedButton(onPressed: (){
              //ADD CODE TO DATABASE
              if(_formKey.currentState?.validate()??false){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Submitted")),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const MyWalletsPage()),
                );
              }
            }, child: const Text("Add Wallet"))
          ],
        ),
      ),

    ),
  );
  }
}
