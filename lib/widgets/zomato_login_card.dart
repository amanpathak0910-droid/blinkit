import 'package:flutter/material.dart';

/// Self-contained demo of a Zomato-style login card.
/// Drop this file in `lib/widgets/` and run it with `flutter run`.
void main() => runApp(const ZomatoLoginDemo());

class ZomatoLoginDemo extends StatelessWidget {
  const ZomatoLoginDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zomato Login Card Demo',
      home: Scaffold(
        backgroundColor: const Color(0xFFF2F5F8),
        body: const Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: ZomatoLoginCard(
              name: 'Sujal',
              phone: '782777xxxx',
            ),
          ),
        ),
      ),
    );
  }
}

class ZomatoLoginCard extends StatelessWidget {
  final String name;
  final String phone;
  final double width;

  const ZomatoLoginCard({
    Key? key,
    required this.name,
    required this.phone,
    this.width = 340,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: width),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Profile name and masked phone number
              Column(
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    phone,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[700],
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // Login with Zomato button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: const Color(0xFFE93B2D), // Zomato-like red
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Login with Zomato tapped')),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Simple white circular "Z" logo placeholder
                      Container(
                        height: 22,
                        width: 22,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Z',
                          style: TextStyle(
                              color: Color(0xFFE93B2D),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Login with ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Zomato',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Small helper text
              Text(
                'Access your saved addresses from Zomato automatically!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),

              const SizedBox(height: 16),

              // Or login with phone (green link)
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Login with phone tapped')),
                  );
                },
                child: Text(
                  'or login with phone number',
                  style: TextStyle(
                    color: Colors.green[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
