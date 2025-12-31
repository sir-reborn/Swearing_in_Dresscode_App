import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/jc_logo.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              'Swearing-In Ceremony',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Color(0xFF7F0782),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Corporate Dress Code Guidelines',

              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(color: Colors.orange),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            Text(
              'All elected officials and appearing electoral rep must adhere to these dress codes accepted by the Judicial Council for Swearing-ins in the 25/26 parliamentary session.',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
