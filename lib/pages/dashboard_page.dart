import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/header.dart';
import '../widgets/budget_card.dart';
import '../widgets/category_item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 🔹 Fondo blanco
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const SizedBox(height: 20),
              const BudgetCard(),
              const SizedBox(height: 20),

              // 🔹 Fila de títulos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 🔸 Categories dentro de un rectángulo gris
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Text(
                    "Recent transaction",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey, // 🔹 Gris
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),

              // "View All"
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "View All",
                    style: TextStyle(
                      color: AppColors.primaryBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // 🔹 Lista de categorías (con el nuevo orden y color del amount)
              const CategoryItem(
                title: 'Food & Drink',
                today: '+\$2.250 Today',
                amount: '\$391.254,01',
                percent: '1.8%',
                icon: 'assets/images/pizza.png',
                color: Colors.green,
                amountColor: AppColors.primaryBlue,
              ),
              const CategoryItem(
                title: 'Electronics',
                today: '+\$2.250 Today',
                amount: '\$3.176.254,01',
                percent: '43.6%',
                icon: 'assets/images/tv.png',
                color: Colors.green,
                amountColor: AppColors.primaryBlue,
              ),
              const CategoryItem(
                title: 'Health',
                today: '+\$110 Today',
                amount: '\$38,01',
                percent: '-25.8%',
                icon: 'assets/images/pills.png',
                color: Colors.red,
                amountColor: AppColors.primaryBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
