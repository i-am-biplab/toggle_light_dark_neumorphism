import 'package:flutter/material.dart';
import 'package:toggle_light_dark_neumorphism/components/my_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.grey[800] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey[800] : Colors.grey[300],
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: isDarkMode
                        ? Colors.grey.shade900
                        : Colors.grey.shade500,
                    offset: const Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: isDarkMode ? Colors.grey.shade700 : Colors.white,
                    offset: const Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Icon(
                Icons.send_rounded,
                size: 90,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),

            // toggle buttons
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    buttonColor: Colors.white,
                    buttonName: "Light",
                    buttonNameColor: Colors.black,
                    onTap: () {
                      setState(() {
                        isDarkMode = false;
                      });
                    },
                  ),
                  MyButton(
                    buttonColor: Colors.black,
                    buttonName: "Dark",
                    buttonNameColor: Colors.white,
                    onTap: () {
                      setState(() {
                        isDarkMode = true;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
