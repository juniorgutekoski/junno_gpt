import 'package:flutter/material.dart';
import 'package:junno_app/src/data/datasources/sembast_datasource_provider.dart';
import 'package:junno_app/src/ui/vendas/vendas_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SembastDatasourceProvider().instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: false,
      ),
      home: const VendasPage(),
    );
  }
}
