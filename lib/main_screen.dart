import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final WebViewController controller;

  @override
  initState() {
    super.initState();
    controller = WebViewController()
      // ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..setBackgroundColor(const Color(0x00000000))
      // ..setNavigationDelegate(
      //   NavigationDelegate(
      //     onProgress: (int progress) {
      //       // Update loading bar.
      //     },
      //     onPageStarted: (String url) {},
      //     onPageFinished: (String url) {},
      //     onWebResourceError: (WebResourceError error) {},
      //     onNavigationRequest: (NavigationRequest request) {
      //       if (request.url.startsWith('https://www.youtube.com/')) {
      //         return NavigationDecision.prevent;
      //       }
      //       return NavigationDecision.navigate;
      //     },
      //   ),
      // )
      ..loadRequest(Uri.parse('https://flutter.dev'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나만의 웹브라우저'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              controller.loadRequest(Uri.parse(value));
            },
            itemBuilder: (context) => [
              const PopupMenuItem<String>(
                value: 'https://www.google.com',
                child: Text('google'),
              ),
              const PopupMenuItem<String>(
                value: 'https://www.naver.com',
                child: Text('naver'),
              ),
              const PopupMenuItem<String>(
                value: 'https://www.kakao.com',
                child: Text('kakao'),
              ),
            ],
          )
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
