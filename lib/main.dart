import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'latihan61_provider/cuti_notifier.dart';
import 'latihan63_bloc/app_bloc_observer.dart';
import 'latihan63_bloc/auth_cubit.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(
    ProviderScope(
      retry: (retryCount, error) => null,
      child: ChangeNotifierProvider(
        create: (_) => CutiNotifier(),
        child: BlocProvider(
          create: (_) => AuthCubit(),
          child: const AplikasiHR(),
        ),
      ),
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
