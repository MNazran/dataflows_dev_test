import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF244B3A),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              const Text(
                'LOGO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.w700,
                ),
              ),
              //const SizedBox(height: 12),

              // Next Appointment with lines
              Row(
                children: [
                  // Left line
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                  // Text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'NEXT APPOINTMENT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  // Right line
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Appointment Details Row
              const Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Colors.white70,
                    size: 16,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '14 Oct 2020',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.access_time,
                    color: Colors.white70,
                    size: 16,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '12:30 PM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 16,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '123 Plant Street, 1/1 ...',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white70,
                    size: 16,
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Credit, Points, Package Container
              Container(
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: const Column(
                          children: [
                            Text(
                              'CREDIT',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF244B3A),
                                letterSpacing: 1.0,
                              ),
                            ),
                            Text(
                              'RM100.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF244B3A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: const Color(0xFFCBCBCB),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: const Column(
                          children: [
                            Text(
                              'POINTS',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF244B3A),
                                letterSpacing: 1.0,
                              ),
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF244B3A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: const Color(0xFFCBCBCB),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: const Column(
                          children: [
                            Text(
                              'PACKAGE',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF244B3A),
                                letterSpacing: 1.0,
                              ),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF244B3A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
