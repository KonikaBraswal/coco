import 'package:flutter/material.dart';
import 'mybanks.dart';
class AddBankPage extends StatelessWidget{
  const AddBankPage({super.key});

  @override

  Widget build(BuildContext context) {
    final _formKey=GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Bank"),
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
                  labelText: "Bank Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter valid Bank Name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Bank",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter valid Bank";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Bank Type",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter valid Bank Type";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Bank Initial Money",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please enter valid Bank Money";
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
                    MaterialPageRoute(builder: (context)=> const MyBanksPage()),
                  );
                }
              }, child: const Text("Add Bank"))
            ],
          ),
        ),

      ),
    );
  }
}
