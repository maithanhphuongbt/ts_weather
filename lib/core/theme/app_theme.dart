import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
	return ThemeData(
	  scaffoldBackgroundColor: const Color(0xFFF5F6F7),
	  appBarTheme: const AppBarTheme(
		elevation: 0,
		backgroundColor: Color(0xFFF5F6F7),
		iconTheme: IconThemeData(color: Colors.black),
		titleTextStyle: TextStyle(
		  color: Colors.black,
		  fontSize: 20,
		  fontWeight: FontWeight.bold,
		),
	  ),
	  textTheme: const TextTheme(
		headlineLarge: TextStyle(
		  fontSize: 24,
		  fontWeight: FontWeight.bold,
		  color: Colors.black,
		),
		headlineMedium: TextStyle(
		  fontSize: 20,
		  fontWeight: FontWeight.bold,
		  color: Colors.black,
		),
		bodyLarge: TextStyle(
		  fontSize: 16,
		  color: Colors.black,
		),
		bodyMedium: TextStyle(
		  fontSize: 14,
		  color: Colors.black,
		),
	  ),
	);
  }
}