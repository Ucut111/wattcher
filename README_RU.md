## Описание
Watchers chat SDK предоставляет вам удобный чат с комнатами в которых могут общаться пользователи вашего приложения

## Подключение
```
watchers_widget:
  git:
     ref: master
     url: https://gitlab.com/watchershub/fluttersdk/
     path: watchers_widget
```

## Использование
Для использования чата импортируйте наш виджет к себе в приложение и передайте в него необходимые параметры:
1) `userId` - уникальный идентификатор вашего пользователя, который мы используем для его идентификации в комнате
2) `roomId` - уникальный идентификатор комнаты, в которую попадет юзер после идентификации

Вы можете использовать наш виджет, как в `example/main.dart`:

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
