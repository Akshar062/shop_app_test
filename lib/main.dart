import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_test/provider/cart_provider.dart';
import 'package:shop_app_test/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        title: "shop app",
        home: const HomeScreen(),
      ),
    );
  }
}
