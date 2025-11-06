import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String today;
  final String amount;
  final String percent;
  final String icon;
  final Color color;
  final Color amountColor;

  const CategoryItem({
    super.key,
    required this.title,
    required this.today,
    required this.amount,
    required this.percent,
    required this.icon,
    required this.color,
    required this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPositive = !percent.contains('-');
    final Color boxColor = isPositive ? Colors.green : Colors.red;
    final IconData arrowIcon =
        isPositive ? Icons.arrow_upward : Icons.arrow_downward;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Cuadro gris del ícono
          Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200], // 🔸 Fondo gris claro
              border: Border.all(color: Colors.grey[400]!, width: 1), // 🔸 Borde gris
              borderRadius: BorderRadius.circular(8), // 🔸 Cuadro con esquinas suaves
            ),
            child: Image.asset(
              icon,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 16),

          // 🔹 Información principal
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔸 Título
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),

                // 🔸 Today
                Text(
                  today,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),

                // 🔸 Amount debajo del today
                Text(
                  amount,
                  style: TextStyle(
                    color: amountColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          // 🔹 Cuadro del porcentaje con flecha
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: boxColor.withOpacity(0.1),
              border: Border.all(color: boxColor, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  arrowIcon,
                  color: boxColor,
                  size: 14,
                ),
                const SizedBox(width: 3),
                Text(
                  percent,
                  style: TextStyle(
                    color: boxColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
