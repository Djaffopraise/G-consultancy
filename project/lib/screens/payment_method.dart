import 'package:flutter/material.dart';
import 'package:project/screens/mtnpay.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Various Payment Methods',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Mobile Wallets',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PaymentCard(
                  imagePath: 'assets/images/mtn.jpg',
                  label: 'MTN Mobile Money',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MtnPay()),
                    );

                    // Handle MTN Mobile Money action
                    _showPaymentDialog(context, 'MTN Mobile Money');
                  },
                ),
                PaymentCard(
                  imagePath: 'assets/images/orange.jpg',
                  label: 'Orange Money',
                  onPressed: () {
                    // Handle Orange Money action
                    _showPaymentDialog(context, 'Orange Money');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Visa Cards',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PaymentCard(
                  imagePath: 'assets/images/uba.PNG',
                  label: 'UBA',
                  onPressed: () {
                    // Handle UBA action
                    _showPaymentDialog(context, 'UBA');
                  },
                ),
                PaymentCard(
                  imagePath: 'assets/images/ecobank.PNG',
                  label: 'Ecobank',
                  onPressed: () {
                    // Handle Ecobank action
                    _showPaymentDialog(context, 'Ecobank');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Others',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PaymentCard(
                  imagePath: 'assets/images/paypal.PNG',
                  label: 'PayPal',
                  onPressed: () {
                    // Handle PayPal action
                    _showPaymentDialog(context, 'PayPal');
                  },
                ),
                Container(), // Empty space for alignment
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentDialog(BuildContext context, String paymentMethod) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selected Method'),
          content: Text('You selected $paymentMethod'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class PaymentCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback onPressed; // New onPressed parameter

  const PaymentCard({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onPressed, // Required onPressed
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Call the onPressed function when tapped
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
