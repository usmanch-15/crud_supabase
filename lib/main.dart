import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://lwtyjewgdobgmsdrkijq.supabase.co',   // 👈 apna URL yahan
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3dHlqZXdnZG9iZ21zZHJraWpxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzgyMTQ1MjIsImV4cCI6MjA5Mzc5MDUyMn0.HYzzCGOCkvxZ3xb7MDtSzYzeMryLXq2srTtHVg2_Gw8', // 👈 apni key yahan
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 3 - Submissions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}