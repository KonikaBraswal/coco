import 'package:flutter/material.dart';

class WalletDetailsPage extends StatelessWidget {
  final String walletName;
  final String walletType;
  final double balance;

  const WalletDetailsPage({
    super.key,
    required this.walletName,
    required this.walletType,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Wallet Name: $walletName",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Wallet Type: $walletType",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Balance: \$${balance.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality to edit the wallet
              },
              child: const Text("Add Transaction"),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality to delete the wallet
              },
              child: const Text("Delete Wallet"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Set delete button color to red
              ),
            ),
          ],
        ),
      ),
    );
  }
}
