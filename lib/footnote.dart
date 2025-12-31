import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const SizedBox(height: 16),
        Text(
          'FUTASU Judicial Council',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          'Ethics and Disciplinary Committee',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: const Text('Contact Us')),
            TextButton(onPressed: () {}, child: const Text('About')),
            TextButton(onPressed: () {}, child: const Text('FAQs')),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          '© ${DateTime.now().year} Judicial Council',
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
