import 'package:flutter/material.dart';
import 'package:flutter_tictok2/pages/video_player_full_page.dart';

import '../mock/video_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<VideoData> videoDataList = []; //影片資料列表
  List<VideoType> videoTypeList = []; //影片分類資料列表

  /// 影片資料 API請求
  Future<void> loadData(bool isLoadMore) async {
    // 延遲200ms 模擬網路請求
    await Future.delayed(const Duration(milliseconds: 200));
    if (isLoadMore) {
      print('=========> loadData');
      List<VideoData> newVideoDataList = [];
      newVideoDataList.clear();
      newVideoDataList.addAll(videoDataList);
      newVideoDataList.addAll(testVideoData);
      setState(() {
        videoDataList = newVideoDataList;
      });
    } else {
      setState(() {
        videoDataList = testVideoData;
      });
    }
  }

  /// 视频类型 API请求
  Future<void> loadVideoType() async {
    // 延遲200ms 模擬網路請求
    await Future.delayed(const Duration(milliseconds: 200));
    videoTypeList = testVideoType;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData(false);
    loadVideoType();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: videoDataList.length,
              itemBuilder: (context, index){
                return VideoPlayerFullPage(
                  size: size,
                  videoData: videoDataList[index],
                  videoTypes: videoTypeList,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
