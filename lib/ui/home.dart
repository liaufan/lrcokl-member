import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  final String html = '''
           <iframe src="https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2Flrcokl%2Fvideos%2F283138963839493%2F&show_text=false&width=560&t=0" width="560" height="314" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe>
     ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Image.asset(
          'assets/logos/main.jpg',
          height: 110,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: '',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: HtmlWidget(
          html,
          webView: true,
        ),
      ),
    );
  }
}
