import 'package:flutter/material.dart';

class AllTransactionsPage extends StatelessWidget {
  // Sample data for transactions with wallet and bank details
  final List<Map<String, String>> transactions = [
    {
      'date': '2024-08-26',
      'description': 'Grocery',
      'amount': '\$50',
      'wallet': 'Personal Wallet',
      'bank': 'Chase Bank',
    },
    {
      'date': '2024-08-25',
      'description': 'Salary',
      'amount': '\$1000',
      'wallet': 'Savings Wallet',
      'bank': 'Bank of America',
    },
    {
      'date': '2024-08-24',
      'description': 'Online Shopping',
      'amount': '\$150',
      'wallet': 'Shopping Wallet',
      'bank': 'Wells Fargo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Transactions'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return ListTile(
            title: Text(transaction['description']!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Date: ${transaction['date']}'),
                Text('Wallet: ${transaction['wallet']}'),
                Text('Bank: ${transaction['bank']}'),
              ],
            ),
            trailing: Text(transaction['amount']!),
          );
        },
      ),
    );
  }
}
