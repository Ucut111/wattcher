## Description
Watchers chat SDK provides you with a convenient chat with rooms where users of your application can chat

## Connection
```
watchers_widget:
  git:
     ref: master
     url: https://gitlab.com/watchershub/fluttersdk/
```

## Usage
To use the chat, import our widget into your application and pass the necessary parameters to it:
1) `userId` is your user's unique identifier which we use to identify him/her in the room
2) `roomId` is a unique identifier of the room that the user will enter after identification

You can use our widget like in `example/main.dart`:

```
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
                  roomId: '144444',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
```
