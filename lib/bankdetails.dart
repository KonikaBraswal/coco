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
            ElevatedButton(
              onPressed: () {
                // Add functionality to edit the bank details
              },
              child: const Text("Add transaction"),
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality to delete the bank
              },
              child: const Text("Delete Bank"),
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
