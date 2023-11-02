import 'package:flutter/material.dart';
import 'colors_dev.dart';

ThemeData devLightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: colorPrimario,
    onPrimary: colorPrimario,
    secondary: colorSecundario,
    onSecondary: colorSecundario,
    error: colorError,
    onError: colorError,
    background: colorBlanco,
    onBackground: colorBlanco,
    surface: Colors.white54,
    onSurface: Colors.white54,
  ),
  // brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    color: colorPrimario,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.black87,
      fontSize: 32,
    ),
    headline2: TextStyle(
      color: Colors.black87,
      fontSize: 26,
    ),
    bodyText1: TextStyle(
      color: Colors.black87,
      fontSize: 16,
    ),
  ),
);

ThemeData devDarkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: colorPrimarioOscuro,
    onPrimary: colorPrimarioOscuro,
    secondary: colorSecundarioOscuro,
    onSecondary: colorSecundarioOscuro,
    error: colorErrorOscuro,
    onError: colorErrorOscuro,
    background: colorNegro,
    onBackground: colorNegro,
    surface: Colors.white54,
    onSurface: Colors.white54,
  ),
  // brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(color: colorPrimarioOscuro),
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.white70,
      fontSize: 32,
    ),
    headline2: TextStyle(
      color: Colors.black87,
      fontSize: 26,
    ),
    bodyText1: TextStyle(
      color: Colors.white70,
      fontSize: 16,
    ),
  ),
);
