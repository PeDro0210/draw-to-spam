import 'package:draw_to_spam/src/view/screens/create_room.dart';
import 'package:draw_to_spam/src/view/screens/home.dart';
import 'package:draw_to_spam/src/view/screens/join_room.dart';
import 'package:draw_to_spam/src/view/screens/login.dart';
import 'package:draw_to_spam/src/view/screens/rooms.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Draw To Spam',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(
                  255, 23, 96, 26)), //this green color needs changes ngl
          useMaterial3: true,
        ),
        initialRoute: "/home",
        routes: {
          "/login": (context) => const Login(),
          "/home": (context) => const Home(),
          "/rooms": (context) => const Rooms(),
          "/join_rooms": (context) => const JoinRoom(),
          "/create_rooms": (context) => const CreateRoom()
          //TODO: add to the routing the DrawSpace
        });
  }
}
