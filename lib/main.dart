import 'package:dashboard/views/security/login.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'connections/basic_url.dart';

void main()async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: rootApi == "https://www.internationalconcrete.us" ? false: true,
      title: 'Dashboard',
      home: Login(),
    );
  }
}



