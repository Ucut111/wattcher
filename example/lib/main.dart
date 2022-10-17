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
      home: SelectEnvScreen(),
    );
  }
}

// ignore: must_be_immutable
class SelectEnvScreen extends StatelessWidget {
  SelectEnvScreen();

  final userIdController = TextEditingController();
  final roomIdController = TextEditingController();
  StatusName statusName = StatusName.club;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Watchers Demo')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: userIdController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'UserId...',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: roomIdController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'RoomId...',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: DropdownButtonWidget(
                    statusName: statusName,
                    onUpdate: (value) {
                      statusName = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: ElevatedButton(
                    child: const Text('Gooo'),
                    onPressed: () {
                      Navigator.of(context).push(HomePage.route(
                        userIdController.text,
                        roomIdController.text,
                        statusName,
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownButtonWidget extends StatefulWidget {
  final StatusName statusName;
  final void Function(StatusName statusName) onUpdate;

  const DropdownButtonWidget({
    required this.onUpdate,
    required this.statusName,
  });

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

const List<StatusName> statuses = StatusName.values;

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  late StatusName dropdownValue;

  @override
  void initState() {
    dropdownValue = widget.statusName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<StatusName>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      onChanged: (StatusName? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          widget.onUpdate(dropdownValue);
        });
      },
      items: statuses.map<DropdownMenuItem<StatusName>>((StatusName value) {
        return DropdownMenuItem<StatusName>(
          value: value,
          child: Text(value.name),
        );
      }).toList(),
    );
  }
}

class HomePage extends StatefulWidget {
  final String userId;
  final String roomId;
  final StatusName? statusName;

  const HomePage({
    required this.roomId,
    required this.userId,
    required this.statusName,
  });

  static Route route(
    String userId,
    String roomId,
    StatusName statusName,
  ) =>
      MaterialPageRoute(
        builder: (context) => HomePage(
          roomId: roomId,
          userId: userId,
          statusName: statusName,
        ),
      );

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
                child: WatchersWidget(
                  userId: widget.userId,
                  roomId: widget.roomId,
                  statusName: widget.statusName,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
