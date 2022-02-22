import 'dart:core';
import 'package:faq/responsive_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const reallyLongBody =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis pharetra dui, ac semper nulla dapibus ultrices.'
    ' Pellentesque sed erat accumsan lorem rhoncus mattis eu eget nulla. Phasellus sagittis vehicula dapibus. Nulla dolor nunc, '
    'feugiat ac ullamcorper vel, commodo sed lacus. Nunc volutpat rutrum euismod. Nullam venenatis imperdiet odio, non porta leo '
    'ullamcorper ac. Aliquam fringilla mauris ut ante faucibus, non tempus elit placerat. Donec sed porttitor tellus. Donec lobortis '
    'arcu id lectus commodo varius. Fusce tincidunt ante in faucibus suscipit. Nulla facilisi. Nunc at nibh dictum sem aliquet '
    'consectetur eu nec neque. Nullam ullamcorper vulputate nisl quis pharetra. Etiam dapibus ullamcorper magna, a iaculis libero '
    'dignissim in. Vestibulum dictum, justo posuere consectetur eleifend, augue mi dictum dui, eu sollicitudin elit mauris vel lacus. '
    'Donec dui felis, dapibus vel urna at, commodo facilisis felis.\nCurabitur faucibus leo ipsum, in vehicula risus rhoncus id. Donec '
    'ac velit quis nulla suscipit efficitur. Nulla non euismod neque. Sed blandit urna sed ex tempor sagittis. Curabitur condimentum nec '
    'dui quis sollicitudin. Proin consectetur, metus sed rutrum varius, mi augue placerat est, sed posuere risus nunc ac urna. Nam leo '
    'erat, bibendum non nibh sed, sollicitudin aliquet metus. Aliquam finibus turpis vitae leo laoreet molestie.';

class FAQPage extends StatelessWidget {
  // ExpandableController categoryController,subcategoryController;

  @override
  // void initState(){
  //   super.initState();
  //   categoryController =ExpandableController(initialExpanded: false);
  //   subcategoryController= ExpandableController(initialExpanded: false);
  // }
  const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWiget(
        deskTop: WideScreenFAQPage(),
        tab: WideScreenFAQPage(),
        mobile: MobileScreenFAQPage());
  }
}

class WideScreenFAQPage extends StatelessWidget {
  const WideScreenFAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 0),
            child: Center(
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "Frequently asked questions",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.black, height: 1.3),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const BuildCard('What exactly is a Zomato Spoonback?'),
                  const BuildCard("Why would I want to use it?"),
                  const BuildCard("How does it work?"),
                  const BuildCard(
                      "How long will it take for my blog link to appear on Zomato?"),
                  const BuildCard("Why was my blog post deleted from Zomato?"),
                  const BuildCard("Why was my blog post deleted from Zomato?"),
                  const BuildCard("Why was my blog post deleted from Zomato?"),
                  const BuildCard("Why was my blog post deleted from Zomato?"),
                ],
              ),
            )));
  }
}

class BuildCard extends StatelessWidget {
  // final title;
  final String title;
  //final Section section;
  const BuildCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.black87,
              ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              reallyLongBody,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black87, height: 1.3),
            ),
          )
        ],
      ),
    );
  }
}

class MobileScreenFAQPage extends StatelessWidget {
  const MobileScreenFAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
          child: Center(
            child: ListView(
              children: [
                Center(
                  child: Text(
                    "Frequently asked questions",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.black, height: 1.3),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const BuildCard('What exactly is a Zomato Spoonback?'),
                const BuildCard("Why would I want to use it?"),
                const BuildCard("How does it work?"),
                const BuildCard(
                    "How long will it take for my blog link to appear on Zomato?"),
                const BuildCard("Why was my blog post deleted from Zomato?"),
                const BuildCard("Why was my blog post deleted from Zomato?"),
                const BuildCard("Why was my blog post deleted from Zomato?"),
                const BuildCard("Why was my blog post deleted from Zomato?"),
                const BuildCard("Why was my blog post deleted from Zomato?"),


              ],
            ),
          )),
    );
  }
}
