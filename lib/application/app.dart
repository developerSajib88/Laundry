import 'package:flutter/material.dart';
import 'package:my_laundry/presentation/screen/other_screen/bottom_navigation_screen.dart';

import '../utils/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: const BottomNavigationScreen(),
    );
  }
}
