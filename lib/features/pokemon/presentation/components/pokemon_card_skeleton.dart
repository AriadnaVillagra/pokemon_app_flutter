// pokemon_card_skeleton.dart

import 'package:flutter/material.dart';

class PokemonListSkeleton extends StatelessWidget {
  const PokemonListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, index) => const PokemonCardSkeleton(),
    );
  }
}

class PokemonCardSkeleton extends StatelessWidget {
  const PokemonCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
      height: 135,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _box(width: 50, height: 14),
                      const SizedBox(height: 8),
                      _box(width: 120, height: 22),
                      const SizedBox(height: 16),
                      Row(
                        children: [_chip(), const SizedBox(width: 8), _chip()],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: Colors.grey.shade500,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _box({required double width, required double height}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _chip() {
    return Container(
      width: 60,
      height: 22,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
