import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart';

import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/pages/Parallax.dart';

import 'package:vertical_landing_page/ui/shared/custom_app_menu.dart';

import 'package:vertical_landing_page/ui/views/about_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';
import 'package:vertical_landing_page/ui/views/location_view.dart';
import 'package:vertical_landing_page/ui/views/home_view.dart';
import 'package:vertical_landing_page/ui/views/pricing_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(right: 20, top: 20, child: CustomAppMenu()),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 224, 215, 219),
            Color.fromARGB(255, 157, 153, 158)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        Positioned(child: ExampleParallax()),
        AboutView(),
        //PricingView(),
        ContactView(),
        //LocationView(),
      ],
    );
  }
}
