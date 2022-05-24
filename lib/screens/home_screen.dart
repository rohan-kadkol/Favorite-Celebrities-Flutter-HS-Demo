import 'package:favorite_celebrity/providers/celeb_provider.dart';
import 'package:favorite_celebrity/widgets/bottom_bar.dart';
import 'package:favorite_celebrity/widgets/celebs_page_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Change backgroundColor to black
      backgroundColor: Colors.black,
      // TODO: Add CelebsPageView and wrap it with a CelebProvider
      body: ChangeNotifierProvider(
        create: (_) => CelebProvider(),
        child: CelebsPageView(),
      ),
    );
  }
}
