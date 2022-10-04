import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:watchers_widget/watchers_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watchers Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    final height = size.height - padding.top - padding.bottom - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(title: const Text('Watchers Demo')),
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          // Close keyboard on scroll down
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              FocusManager.instance.primaryFocus?.unfocus();
            }
            return true;
          },

          // It is preferable to put the chat in a scrollable component
          child: ListView(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            children: [
              SizedBox(height: height * 0.3),

              // You must provide height or flex
              SizedBox(
                height: height * 0.7,
                child: const WatchersWidget(
                  userId: 'DummyExternalID6',
                  roomId: '144446',
                  statusName: StatusName.gold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
