//import 'package:eomeonada/Home.dart';
import 'package:eomeonada/Home.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://lbgqvqsioqayyqrapeae.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxiZ3F2cXNpb3FheXlxcmFwZWFlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjM2ODE5MzIsImV4cCI6MjAzOTI1NzkzMn0.EgHPmLy1XtX4BEFhfwK2Fz3-BnsqyuU8ZRjxA34QYaQ',
  ); // supabase db 연동
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final supabase = Supabase.instance.client;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: supabase.auth.currentSession!.accessToken.isNotEmpty || !supabase.auth.currentSession!.isExpired ? HomePage() : Login()
    );
  }
}