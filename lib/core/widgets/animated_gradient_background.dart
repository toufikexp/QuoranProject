import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedGradientBackground extends StatefulWidget {
  final bool isDarkMode;
  final Widget child;

  const AnimatedGradientBackground({
    super.key,
    required this.isDarkMode,
    required this.child,
  });

  @override
  State<AnimatedGradientBackground> createState() =>
      _AnimatedGradientBackgroundState();
}

class _AnimatedGradientBackgroundState
    extends State<AnimatedGradientBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final angle = _controller.value * 2 * math.pi;
        final darkColors = [
          const Color(0xFF0D1B0F),
          const Color(0xFF1B5E20),
          const Color(0xFF2E7D32),
          const Color(0xFF0D1B0F),
        ];
        final lightColors = [
          const Color(0xFF1B5E20),
          const Color(0xFF4CAF50),
          const Color(0xFFFFF9C4),
          const Color.fromARGB(255, 89, 255, 0),
          const Color(0xFF1B5E20),
        ];
        final colors = widget.isDarkMode ? darkColors : lightColors;
        final stops = widget.isDarkMode
            ? const [0.0, 0.3, 0.6, 1.0]
            : const [0.0, 0.25, 0.5, 0.75, 1.0];
        
        return Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(
              center: Alignment(
                0.5 + 0.3 * math.cos(angle),
                0.5 + 0.3 * math.sin(angle),
              ),
              colors: colors,
              stops: stops,
            ),
          ),
          child: Stack(
            children: [
              // Particle effect
              CustomPaint(
                painter: ParticlePainter(
                  time: _controller.value * 2 * math.pi,
                ),
                child: Container(),
              ),
              widget.child,
            ],
          ),
        );
      },
    );
  }
}

class ParticlePainter extends CustomPainter {
  final double time;

  ParticlePainter({required this.time});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    final particleCount = 20;
    for (int i = 0; i < particleCount; i++) {
      final x = (size.width / particleCount) * i +
          (size.width / particleCount) * 0.5;
      final y = size.height * 0.3 +
          math.sin(time + i) * 50 +
          math.cos(time * 0.5 + i) * 30;
      final radius = 2 + math.sin(time + i) * 1;

      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

