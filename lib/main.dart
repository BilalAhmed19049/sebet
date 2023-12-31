import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sebet/providers/userauth_provider.dart';
import 'package:sebet/screens/createfund_screen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  runApp(ChangeNotifierProvider(
    create: (context) => UserAuth(),
    child: MyApp(),
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          //  useMaterial3: true,
          ),
      home: CreateFundScreen(),
    );
  }
}
