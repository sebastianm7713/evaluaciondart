import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 🔹 Imagen cuadrada del usuario que ocupa todo el borde
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
            image: const DecorationImage(
              image: AssetImage('assets/images/user.jpg'),
              fit: BoxFit.cover, // 🔸 La imagen ocupa todo el cuadro
            ),
          ),
        ),
        const SizedBox(width: 30),

        // 🔹 Nombre del usuario o tienda
        const Text(
          'Store Name',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),

        const Spacer(),

        // 🔹 Icono de notificación con recuadro cuadrado
        _squareIcon(Icons.notifications_none_rounded),

        const SizedBox(width: 10),

        // 🔹 Icono de perfil con recuadro cuadrado
        _squareIcon(Icons.person_outline_rounded),
      ],
    );
  }

  // 🔹 Método auxiliar para íconos cuadrados
  Widget _squareIcon(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: AppColors.primaryBlue),
        onPressed: () {},
      ),
    );
  }
}
