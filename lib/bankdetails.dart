import 'package:flutter/material.dart';

class BankDetailsPage extends StatelessWidget {
  final String bankName;
  final String accountNumber;
  final String accountType;
  final double balance;

  const BankDetailsPage({
    super.key,
    required this.bankName,
    required this.accountNumber,
    required this.accountType,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    // Sample transactions
    final List<Map<String, String>> transactions = [
      {
        'name': 'Grocery Shopping',
        'date': '2024-08-01',
        'amount': '- \$50.00',
      },
      {
        'name': 'Salary',
        'date': '2024-08-05',
        'amount': '+ \$2000.00',
      },
      {
        'name': 'Electricity Bill',
        'date': '2024-08-10',
        'amount': '- \$150.00',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bank Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Bank Name: $bankName",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Account Number: $accountNumber",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Account Type: $accountType",
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

            // Edit and Delete buttons
            ElevatedButton(
              onPressed: () {
                // Add functionality to edit the bank details
              },
              child: const Text("Add Transaction"),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality to delete the bank
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Set delete button color to red
              ),
              child: const Text("Delete Bank"),
            ),
          ],
        ),
      ),
    );
  }
}
