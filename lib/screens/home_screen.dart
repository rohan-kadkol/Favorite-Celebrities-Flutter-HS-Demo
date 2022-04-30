import 'package:favorite_celebrity/widgets/bottom_bar.dart';
import 'package:favorite_celebrity/widgets/celebs_page_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        shadowColor: Colors.grey,
      ),
      body: CelebsPageView(),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: CelebsPageView(),
      //     ),
      //     // BottomBar()
      //   ],
      // ),
    );
  }
}
