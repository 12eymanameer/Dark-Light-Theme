import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Themechange.dart'; // Ensure you have this import

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int count = 0;

  void increase() {
    setState(() {
      count++;
    });
  }

  void decrease() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Themechange>(
      builder: (context, themechange, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Counter',
              style: TextStyle(
                color: Theme.of(context).appBarTheme.foregroundColor,
                fontWeight: FontWeight.w800,
              ),
            ),
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
          body: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$count',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          increase();
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          //color: Theme.of(context).buttonColor,
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          decrease();
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          //color: Theme.of(context).buttonColor,
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
