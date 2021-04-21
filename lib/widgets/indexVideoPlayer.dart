import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class IndexVideoPlayer extends StatefulWidget {
  final Size size;

  IndexVideoPlayer(this.size);
  @override
  _IndexVideoPlayerState createState() => _IndexVideoPlayerState();
}

class _IndexVideoPlayerState extends State<IndexVideoPlayer> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  bool isVisible=true;
  
  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    );
    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();
    // Use the controller to loop the video.
    _controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     return Stack(
      children: [
        Center(
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                      width: widget.size.width * 0.85,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            // If the video is playing, pause it.
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                              isVisible=true;
                            } else {
                              // If the video is paused, play it.
                              _controller.play();
                              isVisible=false;

                            }
                          })
                        },
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: _controller.value.isInitialized
                                  ? AspectRatio(
                                aspectRatio: 4 / 3,
                                child: VideoPlayer(_controller),
                              )
                              : Container(),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 2,
                              // margin: EdgeInsets.all(10),
                            ),

                            Visibility(
                              visible: isVisible,
                              child: FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Color(0xFFEC6C83),
                                elevation: 5,

                                child: Icon(
                                  _controller.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  size: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            )),
      ],
    );
  }
}
