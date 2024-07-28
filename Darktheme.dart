import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'Home.dart';
import 'Themechange.dart';


class Darktheme extends StatefulWidget {
  const Darktheme({super.key, required this.title});

  final String title;

  @override
  State<Darktheme> createState() => _DarkthemeState();
}

class _DarkthemeState extends State<Darktheme> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Themechange>(
      builder: (BuildContext context, themechange, Widget? child) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        themechange.setThemeMode(ThemeMode.light);
                        themechange.setStandardMode(false);
                      },
                      child: Icon(Icons.light_mode_outlined),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Light Mode",
                      style: GoogleFonts.eagleLake(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        themechange.setThemeMode(ThemeMode.dark);
                        themechange.setStandardMode(false);
                      },
                      child: Icon(Icons.dark_mode_outlined),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Dark Mode",
                      style: GoogleFonts.eagleLake(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        themechange.setThemeMode(ThemeMode.light); // Keep light mode for standard
                        themechange.setStandardMode(true); // Enable standard mode
                      },
                      child: Icon(Icons.star_border_outlined),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Standard Mode",
                      style: GoogleFonts.eagleLake(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Homepage()),
            );
          },
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}
