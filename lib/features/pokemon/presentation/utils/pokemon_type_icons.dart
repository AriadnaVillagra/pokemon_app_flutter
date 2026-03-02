import 'package:flutter/material.dart';

IconData iconDataForType(String type) {
  switch (type.toLowerCase()) {
    case 'fire':
      return Icons.local_fire_department;

    case 'water':
      return Icons.water_drop;

    case 'grass':
      return Icons.eco;

    case 'electric':
      return Icons.flash_on;

    case 'ground':
      return Icons.landscape;

    case 'rock':
      return Icons.terrain;

    case 'bug':
      return Icons.pest_control;

    case 'poison':
      return Icons.science;

    case 'flying':
      return Icons.air;

    case 'psychic':
      return Icons.psychology;

    case 'ice':
      return Icons.ac_unit;

    case 'dragon':
      return Icons.whatshot;

    case 'dark':
      return Icons.nightlight_round;

    case 'steel':
      return Icons.shield;

    case 'fairy':
      return Icons.auto_awesome;

    case 'fighting':
      return Icons.sports_mma;

    case 'ghost':
      return Icons.visibility_off;

    case 'normal':
      return Icons.circle;

    default:
      return Icons.help_outline;
  }
}