import 'package:flutter/material.dart';

void main() => runApp(XebiSpoti());

class XebiSpoti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XebiSpoti',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TechTrendsLibrary(title: 'New tech trends 🎉'),
    );
  }
}

class TechTrendsLibrary extends StatelessWidget {
  final String title;
  final List<TechTrend> techTrends = [
    TechTrend(
        'https://xebia-france.github.io/xebicon19-atomic-design-driven-development/app/assets/tt-mobile.webp',
        'Mobile'),
    TechTrend(
        'https://xebia-france.github.io/xebicon19-atomic-design-driven-development/app/assets/tt-data.webp',
        'Data'),
    TechTrend(
        'https://xebia-france.github.io/xebicon19-atomic-design-driven-development/app/assets/tt-cloud.webp',
        'Cloud'),
    TechTrend(
        'https://xebia-france.github.io/xebicon19-atomic-design-driven-development/app/assets/tt-studio.webp',
        'Studio'),
    TechTrend(
        'https://xebia-france.github.io/xebicon19-atomic-design-driven-development/app/assets/tt-container.webp',
        'Container')
  ];

  TechTrendsLibrary({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: techTrends.map((tt) => Image.network(tt.image)).toList(),
        ));
  }
}

class TechTrend {
  String image;
  String title;

  TechTrend(this.image, this.title);
}
