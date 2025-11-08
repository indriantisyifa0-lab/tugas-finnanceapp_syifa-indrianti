import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

/// ==================
/// KATEGORI: HEALTH
/// ==================
class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final healthTransactions = [
      TransactionModel('Gym Membership', '-Rp150.000', 'Health'),
      TransactionModel('Vitamin Purchase', '-Rp80.000', 'Health'),
      TransactionModel('Doctor Visit', '-Rp250.000', 'Health'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Health'),
        backgroundColor: const Color(0xFF001F3F),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: healthTransactions.length,
        itemBuilder: (context, index) {
          return TransactionItem(transaction: healthTransactions[index]);
        },
      ),
    );
  }
}

/// ==================
/// KATEGORI: TRAVEL
/// ==================
class TravelScreen extends StatelessWidget {
  const TravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final travelTransactions = [
      TransactionModel('Grab Ride', '-Rp25.000', 'Travel'),
      TransactionModel('Train Ticket', '-Rp300.000', 'Travel'),
      TransactionModel('Hotel Booking', '-Rp750.000', 'Travel'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel'),
        backgroundColor: const Color(0xFF001F3F),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: travelTransactions.length,
        itemBuilder: (context, index) {
          return TransactionItem(transaction: travelTransactions[index]);
        },
      ),
    );
  }
}

/// ==================
/// KATEGORI: FOOD
/// ==================
class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final foodTransactions = [
      TransactionModel('Coffee Shop', '-Rp35.000', 'Food'),
      TransactionModel('Lunch with Friends', '-Rp80.000', 'Food'),
      TransactionModel('Dinner Takeaway', '-Rp120.000', 'Food'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
        backgroundColor: const Color(0xFF001F3F),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: foodTransactions.length,
        itemBuilder: (context, index) {
          return TransactionItem(transaction: foodTransactions[index]);
        },
      ),
    );
  }
}

/// ==================
/// KATEGORI: EVENT
/// ==================
class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final eventTransactions = [
      TransactionModel('Movie Ticket', '-Rp60.000', 'Event'),
      TransactionModel('Concert Pass', '-Rp300.000', 'Event'),
      TransactionModel('Festival Entry', '-Rp100.000', 'Event'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Event'),
        backgroundColor: const Color(0xFF001F3F),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: eventTransactions.length,
        itemBuilder: (context, index) {
          return TransactionItem(transaction: eventTransactions[index]);
        },
      ),
    );
  }
}

/// ==================
/// HALAMAN UTAMA
/// ==================
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionModel('Coffee Shop', '-Rp35.000', 'Food'),
      TransactionModel('Grab Ride', '-Rp25.000', 'Travel'),
      TransactionModel('Gym Membership', '-Rp150.000', 'Health'),
      TransactionModel('Movie Ticket', '-Rp60.000', 'Event'),
      TransactionModel('Salary', '+Rp5.000.000', 'Income'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance Mate'),
        centerTitle: true,
        backgroundColor: const Color(0xFF001F3F), // navy blue
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Title =====
            const Text(
              'My Cards',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // ===== Banner Cards =====
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  AtmCard(
                    bankName: 'Bank BRI',
                    cardNumber: '**** 1234',
                    balance: 'Rp4.000.000',
                    color1: Color(0xFF001F3F),
                    color2: Color(0xFF004080),
                  ),
                  AtmCard(
                    bankName: 'Bank BCA',
                    cardNumber: '**** 5678',
                    balance: 'Rp6.500.000',
                    color1: Color(0xFF002855),
                    color2: Color(0xFF004C8C),
                  ),
                  AtmCard(
                    bankName: 'Bank BNI',
                    cardNumber: '**** 8765',
                    balance: 'Rp7.500.000',
                    color1: Color(0xFF003366),
                    color2: Color(0xFF0055A4),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ===== Categories (Horizontal Scroll) =====
            const Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            SizedBox(
              height: 110, // tinggi area kategori
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GridMenuItem(
                    icon: Icons.health_and_safety,
                    label: 'Health',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const HealthScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 12),
                  GridMenuItem(
                    icon: Icons.travel_explore,
                    label: 'Travel',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const TravelScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 12),
                  GridMenuItem(
                    icon: Icons.fastfood,
                    label: 'Food',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FoodScreen()),
                      );
                    },
                  ),
                  const SizedBox(width: 12),
                  GridMenuItem(
                    icon: Icons.event,
                    label: 'Event',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const EventScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ===== Transaction List =====
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionItem(transaction: transactions[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
