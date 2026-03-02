import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final bool isFavorite;
  final VoidCallback onTap;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
    required this.onTap,
  });

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void didUpdateWidget(covariant FavoriteButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (!oldWidget.isFavorite && widget.isFavorite) {
      _controller.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: 48,
        height: 48,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Corazones flotando
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final progress = _controller.value;

                final dy = -progress * 40;

                final animatedColor = Color.lerp(
                  Colors.white,
                  Colors.red,
                  progress,
                );

                return Transform.translate(
                  offset: Offset(0, dy),
                  child: Opacity(
                    opacity: 1 - progress,
                    child: Transform.scale(
                      scale: 1 + (progress * 0.3),
                      child: Icon(
                        Icons.favorite,
                        size: 18,
                        color: animatedColor,
                      ),
                    ),
                  ),
                );
              },
            ),

            // Botón principal
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: Icon(
                widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: widget.isFavorite ? Colors.red : Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
