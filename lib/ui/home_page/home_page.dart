import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_samples/provider/home_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final HomeProvider provider = Get.put(HomeProvider());

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${provider.count.obs}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
