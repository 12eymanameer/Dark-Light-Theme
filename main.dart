import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Darktheme.dart';
import 'Themechange.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Themechange()),
      ],
      child: Consumer<Themechange>(
        builder: (BuildContext context, themechange, Widget? child) {
          final lightTheme = ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.pink,
            scaffoldBackgroundColor: Colors.pink[100],
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              elevation: 4,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              iconTheme: IconThemeData(color: Colors.white),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.pink, // Text color
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.pink, // Text color
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.pink, side: BorderSide(color: Colors.pink), // Border color
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pink),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent),
              ),
            ),
            cardTheme: CardTheme(
              color: Colors.pink[50],
              elevation: 4,
            ),
            textTheme: TextTheme(
              displayLarge: TextStyle(color: Colors.pink[800]),
              bodyLarge: TextStyle(color: Colors.pink[700]),
            ),
          );

          final standardTheme = ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.teal,
            scaffoldBackgroundColor: Colors.teal[100],
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.cyan,
              foregroundColor: Colors.white,
              elevation: 4,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              iconTheme: IconThemeData(color: Colors.white),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.cyan, // Text color
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.cyan, // Text color
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.cyan, side: BorderSide(color: Colors.cyan), // Border color
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyanAccent),
              ),
            ),
            cardTheme: CardTheme(
              color: Colors.teal[50],
              elevation: 4,
            ),
            textTheme: TextTheme(
              displayLarge: TextStyle(color: Colors.teal[800]),
              bodyLarge: TextStyle(color: Colors.teal[700]),
            ),
          );

          final darkTheme = ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.brown,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              elevation: 6,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              iconTheme: IconThemeData(color: Colors.white),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // Text color
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, // Text color
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, side: BorderSide(color: Colors.white), // Border color
              ),
            ),
            cardTheme: CardTheme(
              color: Colors.brown[800],
              elevation: 5,
            ),
            textTheme: TextTheme(
              displayLarge: TextStyle(color: Colors.white),
              bodyLarge: TextStyle(color: Colors.grey[300]),
            ),
          );

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themechange.themeMode,
            theme: themechange.isStandardMode ? standardTheme : lightTheme,
            darkTheme: darkTheme,
            home: const Darktheme(title: 'Theme Switcher'),
          );
        },
      ),
    );
  }
}
