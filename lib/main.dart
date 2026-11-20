import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'latihan61_provider/cuti_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CutiNotifier(),
      child: const AplikasiHR(),
    ),
  );
}

class AplikasiHR extends StatelessWidget {
  const AplikasiHR({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi HR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: true),
      home: const HomePage(),
    );
  }
}
