import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SliverAppScreen extends StatefulWidget {
  const SliverAppScreen({super.key});

  @override
  State<SliverAppScreen> createState() => _SliverAppScreenState();
}

class _SliverAppScreenState extends State<SliverAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
            floating: true,
            //pinned: true,
            toolbarHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Center(
                child: Text(
                  "SLIVER APP SCREEN",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              height: 75,
              margin: EdgeInsets.all(10),
              color: Colors.blue,
            );
          },
          childCount: 40,
        ))
      ]),
    );
  }
}
