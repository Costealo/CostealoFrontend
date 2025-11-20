import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int _step = 1;
  String? _organizacion = 'Empresa';
  String? _plan = 'Básico';
  String? _tipoPago = 'Tarjeta de débito';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CostealoColors.primaryLight,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 650),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                blurRadius: 16,
                offset: const Offset(0, 10),
                color: Colors.black.withOpacity(0.06),
              ),
            ],
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: _step == 1
                ? _buildStep1(context, key: const ValueKey(1))
                : _buildStep2(context, key: const ValueKey(2)),
          ),
        ),
      ),
    );
  }

  Widget _buildStep1(BuildContext context, {Key? key}) {
    return Column(
      key: key,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Paso 1 de 2: Regístrate',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CostealoColors.primaryDark,
            ),
          ),
        ),
        const SizedBox(height: 24),

        // Nombre
        const Text('Nombre:'),
        const SizedBox(height: 6),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Tu nombre',
          ),
        ),
        const SizedBox(height: 16),

        // Correo
        const Text('Correo electrónico:'),
        const SizedBox(height: 6),
        const TextField(
          decoration: InputDecoration(
            hintText: 'ejemplo@correo.com',
          ),
        ),
        const SizedBox(height: 16),

        // Contraseña
        const Text('Contraseña:'),
        const SizedBox(height: 6),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '••••••••',
          ),
        ),
        const SizedBox(height: 16),

        // Verificar contraseña
        const Text('Verificar contraseña:'),
        const SizedBox(height: 6),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Repite tu contraseña',
          ),
        ),
        const SizedBox(height: 16),

        // Organización
        const Text('Organización:'),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          value: _organizacion,
          items: const [
            DropdownMenuItem(
              value: 'Empresa',
              child: Text('Empresa'),
            ),
            DropdownMenuItem(
              value: 'Independiente',
              child: Text('Independiente'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              _organizacion = value;
            });
          },
          decoration: const InputDecoration(),
        ),

        const SizedBox(height: 24),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _step = 2;
              });
            },
            child: const Text('Siguiente'),
          ),
        ),
      ],
    );
  }

  Widget _buildStep2(BuildContext context, {Key? key}) {
    return Column(
      key: key,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Paso 2 de 2: Método de pago',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CostealoColors.primaryDark,
            ),
          ),
        ),
        const SizedBox(height: 24),

        // Subcripción
        const Text('Subcripción:'),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          value: _plan,
          items: const [
            DropdownMenuItem(
              value: 'Básico',
              child: Text('Básico - Bs 29,99/mes'),
            ),
            DropdownMenuItem(
              value: 'Estándar',
              child: Text('Estándar - Bs 49,99/mes'),
            ),
            DropdownMenuItem(
              value: 'Premium',
              child: Text('Premium - Bs 89,99/mes'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              _plan = value;
            });
          },
          decoration: const InputDecoration(),
        ),
        const SizedBox(height: 18),

        // Tipo de pago
        const Text('Tipo de pago:'),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          value: _tipoPago,
          items: const [
            DropdownMenuItem(
              value: 'Tarjeta de débito',
              child: Text('Tarjeta de débito'),
            ),
            DropdownMenuItem(
              value: 'Tarjeta de crédito',
              child: Text('Tarjeta de crédito'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              _tipoPago = value;
            });
          },
          decoration: const InputDecoration(),
        ),
        const SizedBox(height: 18),

        const Text('Ingresa los últimos 4 dígitos:'),
        const SizedBox(height: 6),
        const TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'XXXX',
          ),
        ),
        const SizedBox(height: 16),

        const Text('Fecha de vencimiento:'),
        const SizedBox(height: 6),
        const TextField(
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            hintText: 'MM/AA',
          ),
        ),
        const SizedBox(height: 16),

        const Text('Código de seguridad:'),
        const SizedBox(height: 6),
        const TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'CVV',
          ),
        ),

        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _step = 1;
                });
              },
              child: const Text('Volver'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('¡Comenzar ya!'),
            ),
          ],
        ),
      ],
    );
  }
}
