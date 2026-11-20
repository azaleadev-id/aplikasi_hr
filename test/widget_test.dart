import 'package:aplikasi_hr/latihan61_provider/cuti_notifier.dart';
import 'package:aplikasi_hr/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('membuka halaman pengajuan cuti', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => CutiNotifier(),
        child: const AplikasiHR(),
      ),
    );

    expect(find.text('Latihan 6.1 — Cuti (Provider)'), findsOneWidget);

    await tester.tap(find.text('Latihan 6.1 — Cuti (Provider)'));
    await tester.pumpAndSettle();

    expect(find.text('Pengajuan Cuti'), findsOneWidget);
    expect(find.text('Budi Santoso'), findsOneWidget);
  });
}
