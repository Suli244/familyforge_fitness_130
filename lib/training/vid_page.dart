import 'package:familyforge_fitness_130/core/ff_colors.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VidPage extends StatefulWidget {
  const VidPage({super.key, required this.url});
  final String url;

  @override
  State<VidPage> createState() => _VidPageState();
}

class _VidPageState extends State<VidPage> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(widget.url);
    controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        showLiveFullscreenButton: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const BackButton(
        color: FFColors.grey555555,
      )),
      body: Center(
        child: YoutubePlayer(
          controller: controller,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
