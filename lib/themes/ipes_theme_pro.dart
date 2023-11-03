import 'package:flutter/material.dart';
import 'ipes_colors_pro.dart';

ThemeData ipesLightTheme = ThemeData(
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
    caption: TextStyle(
      color: colorNeutro,
      fontSize: 10,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorPrimario, width: 2.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorNeutro),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorError),
    ),
    isDense: true,
  ),
);

ThemeData ipesDarkTheme = ThemeData(
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
      color: Colors.white70,
      fontSize: 26,
    ),
    bodyText1: TextStyle(
      color: colorNeutroOscuro,
      fontSize: 16,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorPrimarioOscuro, width: 2.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorNeutroOscuro),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorErrorOscuro),
    ),
    isDense: true,
  ),
);
