
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebFF extends StatefulWidget {
  final String url;
  final String title;

  const WebFF({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  State<WebFF> createState() => _WebPlinkState();
}

class _WebPlinkState extends State<WebFF> {
  late WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: WebViewWidget(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
