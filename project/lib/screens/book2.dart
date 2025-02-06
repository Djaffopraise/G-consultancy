import 'package:flutter/material.dart';
import 'package:project/screens/payment_method.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 20), // Space above doctor's details
            // Doctor Info Box
            Card(
              elevation: 5,
              color: const Color.fromARGB(255, 52, 103, 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/doctor.PNG"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dr. Jean Duff',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text('Cardiology consultation',
                        style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 10),
                    // Row for Patient, Experience, and Address
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Patient:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text('2100+',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Experience:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text('10 yrs+',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Address:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text('Cameroon',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Increased space between boxes

            // Schedule Box (Separate Boxes for Time and Date)
            const Row(
              children: [
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.access_time, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('Time: 07:00 pm',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Space between date and time boxes
                Expanded(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.calendar_today, color: Colors.grey),
                          SizedBox(width: 8),
                          Text('Date: 17/02/24',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // Increased space between boxes

            // Payment Box (Adjusted to match the size of the Doctor Info Box)
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const Padding(
                padding: EdgeInsets.all(15.0), // Smaller padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Payment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Consultation fees:',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Booking fee:',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('Promo applied:',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('\$5'),
                            Text('\$4'),
                            Text('-\$3'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20), // Increased space before the button

            // Make Payments Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                );
                // Handle payment logic here
              }, // Font color set to white
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color.fromARGB(255, 52, 103, 8),
                padding: const EdgeInsets.all(16), // Button padding
              ),
              child:
                  Text('Make Payments', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
