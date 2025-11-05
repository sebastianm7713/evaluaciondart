import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Your budget', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 8),
          const Text(
            '\$2.868.000,00',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // Incomes + Spending (vertical)
          Column(
            children: [
              _smallCard(
                icon: Icons.arrow_upward_rounded,
                label: 'Incomes',
                subtitle: 'From January 1 to January 31',
                value: '\$700.000,00',
                iconColor: Colors.greenAccent,
              ),
              const SizedBox(height: 16),
              _smallCard(
                icon: Icons.arrow_downward_rounded,
                label: 'Spending',
                subtitle: 'From January 1 to January 31',
                value: '\$90.000,00',
                iconColor: Colors.redAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _smallCard({
    required IconData icon,
    required String label,
    required String value,
    required String subtitle,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // 🔹 Icono dentro de un recuadro blanco cuadrado
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: iconColor, size: 20),
          ),
          const SizedBox(width: 10),

          // 🔹 Label a la izquierda
          Expanded(
            child: Text(
              label,
              style: const TextStyle(color: Colors.white70, fontSize: 13),
            ),
          ),

          // 🔹 Value + subtitle alineados a la derecha
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),

          // 🔹 Flecha dentro de un recuadro blanco cuadrado
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.black54,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
