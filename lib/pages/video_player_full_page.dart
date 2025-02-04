import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../mock/video_data.dart';
import '../widgets/comment_bottom_sheet.dart';

class VideoPlayerFullPage extends StatefulWidget {
  final Size size;
  final List<VideoType> videoTypes; //影片頂部分類
  final VideoData? videoData;

  const VideoPlayerFullPage({
    super.key,
    required this.size,
    required this.videoTypes,
    required this.videoData,
  });

  @override
  State<VideoPlayerFullPage> createState() => _VideoPlayerFullPageState();
}

class _VideoPlayerFullPageState extends State<VideoPlayerFullPage> {
  late VideoPlayerController videoController;
  bool isInitPlaying = false;
  bool isBuffering = false;
  List<CommentData> comments = []; //評論數據列表
  double videoWidth = 0;
  double videoHeight = 0;
  double _currentSliderValue = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoController = VideoPlayerController.network(widget.videoData!.videoUrl)
      ..initialize().then((value) {
        videoController.play();
        videoController.setLooping(true);
        setState(() {
          _currentSliderValue = 0.0;
          isInitPlaying = true;
          videoWidth = videoController.value.size.width;
          videoHeight = videoController.value.size.height;
        });
      });
    videoController.addListener(videoListener);
  }

  void videoListener() {
    setState(() {
      isBuffering = videoController.value.isBuffering;
      _currentSliderValue = videoController.value.position.inSeconds.toDouble();
    });
  }

  @override
  void dispose() {
    videoController.removeListener(videoListener);
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: widget.size.height,
      width: widget.size.width,
      child: InkWell(
        onTap: (){
          print('============>影片點擊 ');
          setState(() {
            videoController.value.isPlaying
                ? videoController.pause()
                : videoController.play();
          });
        },
        child: widget.videoData == null
            ? noData()
        : Container(
          height: widget.size.height,
          width: widget.size.width,
          decoration: const BoxDecoration(color: Colors.black),
          child: Stack(
            children: [

              videoWidth > videoHeight
                  ? Center(
                child: AspectRatio(
                  aspectRatio: videoController.value.aspectRatio,
                  child: VideoPlayer(videoController),
                ),
              )
                  : AspectRatio(
                aspectRatio: videoController.value.aspectRatio,
                child: VideoPlayer(videoController),
              ),

              Center(
                child: !videoController.value.isPlaying && !isInitPlaying
                    ? Image.network(
                  widget.videoData!.albumImg,
                  width: widget.size.width,
                  height: widget.size.height,
                  fit: BoxFit.cover,
                )
                    : const SizedBox(),
              ),

              Center(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: isPlaying(),
                ),
              ),

              isBuffering || !videoController.value.isInitialized
                  ? const Center(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(
                    color: Color(0xFF69DCE5),
                  ),
                ),
              )
                  : const SizedBox(),

              Padding(
                padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            bottomPanel(
                              widget.size,
                              widget.videoData!,
                            ),
                            rightPanel(
                              context,
                              widget.size,
                              widget.videoData!,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 3, // 軌道高度
                            trackShape:
                            const RoundedRectSliderTrackShape(), // 軌道形狀，可以自訂
                            activeTrackColor:
                            const Color(0xFF444444), // 已啟動的軌道顏色
                            inactiveTrackColor:
                            const Color(0x80444444), // 未啟動的軌道顏色
                            thumbColor: const Color(0xFF999999), // 滑桿顏色
                            thumbShape: const RoundSliderThumbShape(
                              //  滑塊形狀，可以自訂
                                enabledThumbRadius: 4 // 滑桿大小
                            ),
                            overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 10, // 設定滑桿的覆蓋層半徑
                            ),
                          ),
                          child: Slider(
                            value: _currentSliderValue,
                            min: 0.0,
                            max: videoController.value.duration.inSeconds
                                .toDouble(),
                            onChanged: (value) {
                              setState(() {
                                _currentSliderValue = value;
                                videoController.seekTo(
                                    Duration(seconds: value.toInt()));
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              videoWidth > videoHeight
                  ? InkWell(onTap: () {
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FullScreenVideoPage(
                            videoController: videoController)),
                  );*/
              },
                child: Padding(
                  padding: const EdgeInsets.only(top: 500, left: 120),
                  child: SizedBox(
                    width: 110,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0x80444444),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.fullscreen,
                            color: Colors.white,
                          ),
                          Text(
                            '全螢幕觀看',
                            style: TextStyle(fontSize: 14, color: Colors.white,),
                          ),
                          SizedBox(
                            width: 3,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ) : const SizedBox(),





            ],
          ),
        ),
      ),
    );
  }

  Widget noData(){
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0x80444444),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.error_outline,
            size: 50,
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            '無數據',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
  Widget isPlaying() {
    if (videoController.value.isInitialized) {
      return videoController.value.isPlaying
          ? const SizedBox()
          : Image.asset(
        'assets/images/icon_play.png',
        width: 80,
        height: 80,
      );
    } else {
      return const SizedBox();
    }
  }
  Widget bottomPanel(Size size, VideoData videoData) {
    return Container(
      width: size.width * 0.8,
      height: size.height,
      padding: const EdgeInsets.only(left: 15),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              onUserNameClick(videoData);
            },
            child: Text(
              '@${videoData.userName}',
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: Row(
              children: [
                videoData.type == "1"
                    ? Container(
                  padding: const EdgeInsets.only(
                      left: 4, right: 4, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0), // 設置圓角
                    color: const Color(0xFF8B452B), // 設置背景顏色
                  ),
                  child: const Text(
                    '精',
                    style: TextStyle(
                      color: Color(0xFFF47947),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
                    : const SizedBox(),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  videoData.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '  ·  ${videoData.time}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: Text(
              videoData.description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 8.0, // 主軸(水平)方向間距
            runSpacing: 2.0, // 縱軸（垂直）方向間距
            children: videoData.videoTags.map((item) {
              return InkWell(
                onTap: () {
                  onVideoTagsClick(item);
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 6, right: 6, top: 3, bottom: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // 設定圓角
                    color: const Color(0xFF69DCE5), // 設定背景顏色
                  ),
                  child: Text(
                    '#${item.tagName}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
  Widget rightPanel(BuildContext context, Size size, VideoData videoData) {
    return Expanded(
      child: SizedBox(
        height: size.height,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.4,
            ),
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    getProfile(videoData),
                    getLike(videoData, 25.0),
                    getComment(context, videoData, 25.0),
                    getWatch(videoData, 25.0),
                    getShare(videoData, 25.0),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget getLike(VideoData videoData, double size) {
    return InkWell(
      onTap: () {
        onLikeClick(videoData);
        //print("onLikeClick(videoData);");
      },
      child: Column(
        children: <Widget>[
          videoData.likeStatus == "1"
              ?
          //已點讚
          Image.asset(
            'assets/images/icon_like.png',
            width: size,
            height: size,
          )
          //未點讚
              : Image.asset(
            'assets/images/icon_like.png',
            width: size,
            height: size,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            videoData.likes,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget getComment(BuildContext context, VideoData videoData, double size) {
    return InkWell(
      onTap: () {
        onCommentClick(context, videoData);
        //print("onCommentClick");
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/icon_comment.png',
            width: size,
            height: size,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            videoData.comments,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget getWatch(VideoData videoData, double size) {
    return InkWell(
      onTap: () {
        onWatchClick(videoData);
        //print("onWatchClick");
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/icon_watch.png',
            width: size,
            height: size,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            videoData.watchers,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget getShare(VideoData videoData, double size) {
    return InkWell(
      onTap: () {
        onShareClick(videoData);
        //print("onShareClick");
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/icon_share.png',
            width: size,
            height: size,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            videoData.shares,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }

  Widget getProfile(VideoData videoData) {
    return InkWell(
      onTap: () {
        onAddFriendClick(videoData);
        //print("onAddFriendClick");
      },
      child: SizedBox(
        width: 50,
        height: 60,
        child: Stack(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(videoData.userAvatarUrl),
                      fit: BoxFit.cover)),
            ),
            Positioned(
                bottom: 3,
                left: 18,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF69DCE5)),
                  child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      )),
                ))
          ],
        ),
      ),
    );
  }

  /// 底部影片主題 點擊
  Future<void> onVideoTagsClick(VideoTag videoTag) async {
    print('=====> 點擊了影片話題');
  }
  ///點讚
  Future<void> onLikeClick(VideoData videoData) async {
    print('=====> 點擊了按讚');
  }
  ///評論
  Future<void> onCommentClick(BuildContext context, VideoData videoData) async {
    print('=====> 點擊了評論');
    // 延遲200ms 模擬網路請求
    await Future.delayed(const Duration(milliseconds: 200));
    comments = testCommentData;
    showCommentBottomSheet(context, comments, videoData);
  }
  ///觀看人數
  Future<void> onWatchClick(VideoData videoData) async {
    print('=====> 點擊了觀看人數');
  }
  ///分享
  Future<void> onShareClick(VideoData videoData) async {
    print('=====> 點擊了分享');
  }
  ///加好友
  Future<void> onAddFriendClick(VideoData videoData) async {
    print('=====> 點擊了加好友');
  }
  ///發佈人名稱點擊
  Future<void> onUserNameClick(VideoData videoData) async {
    print('=====> 點擊了發佈者名稱');
  }

  void showCommentBottomSheet(BuildContext context, List<CommentData> comments,
      VideoData videoData) async {
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      enableDrag: true,
      isScrollControlled: true,
      builder: (_) => CommentBottomSheet(
        commentData: comments,
        videoData: videoData,
      ),
    );
  }

}
