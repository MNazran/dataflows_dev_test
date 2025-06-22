import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({super.key});

  static const List<Map<String, String>> _locations = [
    {
      'name': 'Sunway Pyramid',
      'address':
          '1st Floor, Lorem Ipsum Mall\nJalan ss23 Lorem, Selangor, Malaysia',
      'hours': '10am - 10pm',
    },
    {
      'name': 'The Gardens Mall',
      'address':
          '1st Floor Lorem Ipsum Mall\nJalan ss23 Lorem, Selangor, Malaysia',
      'hours': '10am - 10pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final String? googleMapApiKey = dotenv.env['GOOGLE_MAP_API_KEY'];
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location title
          const Text(
            'LOCATION',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 8),

          // Map placeholder
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://maps.googleapis.com/maps/api/staticmap?center=Kuala+Lumpur,Malaysia&zoom=12&size=400x200&maptype=roadmap&markers=color:red%7CKuala+Lumpur,Malaysia&key=$googleMapApiKey',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Fallback when map fails to load
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.map,
                            size: 48,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Map View',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Location list
          ...List.generate(_locations.length, (index) {
            final location = _locations[index];
            return Padding(
              padding: EdgeInsets.only(
                bottom: index < _locations.length - 1 ? 25 : 0,
              ),
              child: _buildLocationItem(
                name: location['name']!,
                address: location['address']!,
                hours: location['hours']!,
              ),
            );
          }),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildLocationItem({
    required String name,
    required String address,
    required String hours,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Location name
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 8),

        // Address
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/icon-location.png',
              width: 14,
              height: 14,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                address,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                  height: 1.4,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),

        // Hours
        Row(
          children: [
            Image.asset(
              'assets/images/icon-clock.png',
              width: 14,
              height: 14,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Text(
              hours,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
