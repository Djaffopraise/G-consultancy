import 'package:flutter/material.dart';

class AppointmentPage extends StatefulWidget {
  final Map<String, dynamic> provider;

  const AppointmentPage({super.key, required this.provider});

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.provider['name']), // Display the doctor's name
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16.0), // Space at the top
              _buildDoctorDetails(),
              const SizedBox(height: 16.0),
              _buildAvailableDays(),
              const SizedBox(height: 16.0),
              _buildTimeSlots(),
              const SizedBox(height: 16.0),
              _buildDetailsSection(),
              const SizedBox(height: 16.0),
              _buildPaymentInfo(),
              const SizedBox(height: 32.0), // Increased space before button
              _buildBookAppointmentButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorDetails() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage:
                  AssetImage(widget.provider['image']), // Use passed data
              radius: 40,
            ),
            const SizedBox(height: 8.0),
            Text(
              widget.provider['name'], // Use passed data
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            _buildRatingStars(widget.provider['rating']), // Use passed data
            const SizedBox(height: 16.0),
            _buildPatientExperienceAddress(),
          ],
        ),
      ),
    );
  }

  Widget _buildPatientExperienceAddress() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('Patients', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('2100+'),
          ],
        ),
        VerticalDivider(thickness: 1, color: Colors.grey),
        Column(
          children: [
            Text('Experience', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('10 yrs+'),
          ],
        ),
        VerticalDivider(thickness: 1, color: Colors.grey),
        Column(
          children: [
            Text('Address', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('Cameroon'),
          ],
        ),
      ],
    );
  }

  Widget _buildAvailableDays() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Available days: Mondays, Saturdays',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTimeSlots() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Time:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildTimeSlotBox('8 a.m. to 9 a.m.'),
                const SizedBox(width: 8.0), // Space between boxes
                _buildTimeSlotBox('5 p.m. to 6 p.m.'),
                const SizedBox(width: 8.0), // Space between boxes
                _buildTimeSlotBox('6 p.m. to 9 p.m.'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSlotBox(String time) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: 12.0), // Adjusted padding
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 52, 103, 8), // Background color
        borderRadius: BorderRadius.circular(8.0), // Rounded corners
      ),
      child: Text(
        time,
        style: const TextStyle(
            color: Colors.white, fontSize: 14), // Adjusted font size if needed
      ),
    );
  }

  Widget _buildDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Details:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        Text(
          widget.provider['name'] +
              'is a highly experienced cardiologist. '
                  'He has an experience of over 10 years. He holds a Doctor of Medicine degree from Harvard University. '
                  'He is fluent in both English and French and is passionate about ensuring that his patients are satisfied.',
        ),
      ],
    );
  }

  Widget _buildPaymentInfo() {
    return const Text('Payment: \$200 per session');
  }

  Widget _buildBookAppointmentButton() {
    return ElevatedButton(
      onPressed: () {
        // Add your booking logic here
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        backgroundColor:
            const Color.fromARGB(255, 52, 103, 8), // Background color
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: const Text(
        'Book An Appointment',
        style: TextStyle(color: Colors.white), // Set text color to white
      ),
    );
  }

  Widget _buildRatingStars(double rating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Icon(
          index < rating.floor() ? Icons.star : Icons.star_border,
          color: Colors.yellow,
          size: 18.0,
        );
      }),
    );
  }
}
