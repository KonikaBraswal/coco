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
    // Sample transactions
    final List<Map<String, String>> transactions = [
      {
        'name': 'Online Purchase',
        'date': '2024-08-15',
        'amount': '- \$80.00',
      },
      {
        'name': 'Deposit',
        'date': '2024-08-10',
        'amount': '+ \$300.00',
      },
      {
        'name': 'Subscription Payment',
        'date': '2024-08-05',
        'amount': '- \$12.99',
      },
    ];

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

            // Transactions section
            const Text(
              "Transactions",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),

            // Display transactions
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final transaction = transactions[index];
                  return Card(
                    child: ListTile(
                      title: Text(transaction['name']!),
                      subtitle: Text(transaction['date']!),
                      trailing: Text(transaction['amount']!),
                    ),
                  );
                },
              ),
            ),

            // Add Transaction button
            ElevatedButton(
              onPressed: () {
                // Add functionality to add a transaction
              },
              child: const Text("Add Transaction"),
            ),

            // Delete Wallet button
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
