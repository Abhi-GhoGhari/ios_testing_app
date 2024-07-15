import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wr0ap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHomePage(),
    );
  }
}

class CupertinoHomePage extends StatelessWidget {
  const CupertinoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("GHOGHARI's APP"),
            CupertinoSwitch(
              value: true,
              onChanged: (val) {},
            ),
          ],
        ),
      ),
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDefaultAction: true,
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text('Copy'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.share,
                child: const Text('Share'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.heart,
                child: const Text('Favorite'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
                child: const Text('Delete'),
              ),
            ],
            child: const ColoredBox(
              color: CupertinoColors.systemYellow,
              child: Image(
                image: NetworkImage(
                  "https://i.pinimg.com/564x/7a/4c/56/7a4c564039b1ef13d7ecb12c1d0f7a82.jpg",
                ),
              ),
            ),

            // GridView(
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 3,
            //     crossAxisSpacing: 1,
            //     mainAxisSpacing: 1,
            //     childAspectRatio: 1 / 2,
            //   ),
            //   children: [
            //     Container(
            //       height: 150,
            //       width: 150,
            //       color: Colors.yellow,
            //     ),
            //   ],
            // )
          ),
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.all(100),
      //   child: Column(
      //     children: [
      //       // const Text("GHOGHARI's APP"),
      //       const SizedBox(height: 10),
      //       CupertinoButton.filled(
      //         child: const Text("DONE"),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
