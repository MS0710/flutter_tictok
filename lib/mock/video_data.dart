class VideoData {
  final String id; // 唯一id
  final String uid; // 發佈人uid
  final String type; //type = 1 視頻加"精"選
  final String videoUrl; //視頻地址
  final String albumImg; //視頻第一幀封面
  final String userName; //發佈者名稱
  final String userAvatarUrl; //發佈者头像
  final String description; //視頻描述
  final String title; //視頻標題
  final String likes; //視頻點讚數
  final String likeStatus; //0未點讚 1已點讚
  final String comments; //視頻評論數
  final String shares; //視頻分享數
  final String watchers; //視頻觀看數
  final String favorites; //視頻收藏數
  final String time; //視頻發佈時間
  final List<VideoTag> videoTags; //視頻關聯話題

  VideoData({
    required this.id,
    required this.uid,
    required this.type,
    required this.videoUrl,
    required this.albumImg,
    required this.userName,
    required this.userAvatarUrl,
    required this.description,
    required this.title,
    required this.likes,
    required this.likeStatus,
    required this.comments,
    required this.shares,
    required this.watchers,
    required this.favorites,
    required this.time,
    required this.videoTags,
  });
}

class VideoTag {
  final String tagId; //視頻關聯話題id
  final String tagName; //視頻關聯話題名稱
  VideoTag({
    required this.tagId,
    required this.tagName,
  });
}

class VideoType {
  final String typeId; //視頻分類id
  final String typeName; //視頻分類名
  VideoType({
    required this.typeId,
    required this.typeName,
  });
}

class CommentData {
  final String id; // 唯一id
  final String uid; // 評論用戶uid
  final String userName; // 評論用戶uid
  final String userAvatarUrl; // 評論用戶uid
  final String time; // 發布評論時間
  final String type; //type = 1 評論加"精"
  final String content; //評論文案
  final String likes; //評論點讚數
  final String likeStatus; //0未點讚 1 已點讚
  final String replayName; //被回復者
  final String replayUid; //被回復者 uid
  final String replayContent; //回復內容
  final List<CommentData> replayList;

  CommentData({
    required this.id,
    required this.uid,
    required this.userName,
    required this.userAvatarUrl,
    required this.time,
    required this.type,
    required this.content,
    required this.likes,
    required this.likeStatus,
    required this.replayName,
    required this.replayUid,
    required this.replayContent,
    required this.replayList,
  });
}

/// 测试数据

List<CommentData> testCommentData = <CommentData>[
  CommentData(
    id: "2524525",
    uid: "5254453",
    userName: "晴子",
    userAvatarUrl:
    "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
    time: "2023/01/17 14:30:22",
    type: "1",
    content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
    likes: "100",
    likeStatus: "1",
    replayName: "虾仁",
    replayUid: "11111",
    replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
    replayList: [
      CommentData(
        id: "2545",
        uid: "11541",
        userName: "用戶1",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
      CommentData(
        id: "5383",
        uid: "57225",
        userName: "用戶2",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
      CommentData(
        id: "42458",
        uid: "245454",
        userName: "用戶3",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
    ],
  ),
  CommentData(
    id: "56535",
    uid: "52482",
    userName: "虾仁",
    userAvatarUrl:
    "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
    time: "2023/01/17 14:30:22",
    type: "1",
    content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
    likes: "100",
    likeStatus: "0",
    replayName: "虾仁",
    replayUid: "11111",
    replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
    replayList: [
      CommentData(
        id: "5353",
        uid: "24535",
        userName: "用戶4",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
      CommentData(
        id: "5355",
        uid: "35434",
        userName: "用戶5",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
      CommentData(
        id: "5452",
        uid: "35572",
        userName: "用戶6",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
    ],
  ),
  CommentData(
    id: "87886",
    uid: "6765",
    userName: "晴子",
    userAvatarUrl:
    "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
    time: "2023/01/17 14:30:22",
    type: "1",
    content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
    likes: "100",
    likeStatus: "0",
    replayName: "虾仁",
    replayUid: "11111",
    replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
    replayList: [
      CommentData(
        id: "8768",
        uid: "68737",
        userName: "用戶7",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
      CommentData(
        id: "68727",
        uid: "68778",
        userName: "用戶8",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
      CommentData(
        id: "12821",
        uid: "8755",
        userName: "用戶9",
        userAvatarUrl:
        "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
        time: "2023/01/17 14:30:22",
        type: "1",
        content: "有情趣又熱愛生活的人真好有情趣又熱愛生活",
        likes: "100",
        likeStatus: "0",
        replayName: "虾仁",
        replayUid: "11111",
        replayContent: "賓士發布全新旅行車更適合大家出遊要不要試駕",
        replayList: [],
      ),
    ],
  ),
];

List<VideoType> testVideoType = <VideoType>[
  VideoType(typeId: "1111", typeName: "熱門"),
  VideoType(typeId: "1111", typeName: "分類一"),
  VideoType(typeId: "1111", typeName: "分類二"),
  VideoType(typeId: "1111", typeName: "分類三"),
  VideoType(typeId: "1111", typeName: "分類四"),
];

List<VideoData> testVideoData = <VideoData>[
  VideoData(
      id: "111",
      uid: "1233",
      type: "1",
      videoUrl: "https://static.ybhospital.net/test-video-2.mp4",
      albumImg:
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F05%2F20210705100427_ee4b8.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1628415177&t=87962cc902fb5925da0a4d60d4c48ca9",
      userName: "發佈人名稱",
      userAvatarUrl:
      "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      description: "春日的暖陽，花開進度80%，準備和愛車路過全世界，感受獨具魅力的嶺南文化!",
      title: "影片標題",
      likes: "130",
      likeStatus: "1",
      comments: "186",
      shares: "135",
      watchers: "328",
      favorites: "636",
      time: "2023年12月16日",
      videoTags: [
        VideoTag(tagId: "1111", tagName: "今天去哪玩"),
        VideoTag(tagId: "1111", tagName: "南京車友圈"),
        VideoTag(tagId: "1111", tagName: "活動名稱"),
      ]),
  VideoData(
      id: "111",
      uid: "1233",
      type: "1",
      videoUrl: "https://static.ybhospital.net/test-video-3.mp4",
      albumImg:
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F05%2F20210705100427_ee4b8.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1628415177&t=87962cc902fb5925da0a4d60d4c48ca9",
      userName: "發佈人名稱",
      userAvatarUrl:
      "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      description: "春日的暖陽，花開進度80%，準備和愛車路過全世界，感受獨具魅力的嶺南文化!",
      title: "影片標題",
      likes: "130",
      likeStatus: "1",
      comments: "165",
      shares: "135",
      watchers: "320",
      favorites: "105",
      time: "2023年12月16日",
      videoTags: [
        VideoTag(tagId: "1111", tagName: "今天去哪玩"),
        VideoTag(tagId: "1111", tagName: "南京車友圈"),
        VideoTag(tagId: "1111", tagName: "活動名稱"),
      ]),
  VideoData(
      id: "111",
      uid: "1233",
      type: "1",
      videoUrl: "https://static.ybhospital.net/test-video-4.mp4",
      albumImg:
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F05%2F20210705100427_ee4b8.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1628415177&t=87962cc902fb5925da0a4d60d4c48ca9",
      userName: "發佈人名稱",
      userAvatarUrl:
      "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      description: "春日的暖陽，花開進度80%，準備和愛車路過全世界，感受獨具魅力的嶺南文化!",
      title: "影片標題",
      likes: "150",
      likeStatus: "1",
      comments: "185",
      shares: "136",
      watchers: "280",
      favorites: "500",
      time: "2023年12月16日",
      videoTags: [
        VideoTag(tagId: "1111", tagName: "今天去哪玩"),
        VideoTag(tagId: "1111", tagName: "南京車友圈"),
        VideoTag(tagId: "1111", tagName: "活動名稱"),
      ]),
  VideoData(
      id: "111",
      uid: "1233",
      type: "1",
      videoUrl: "https://static.ybhospital.net/test-video-5.mp4",
      albumImg:
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F05%2F20210705100427_ee4b8.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1628415177&t=87962cc902fb5925da0a4d60d4c48ca9",
      userName: "發佈人名稱",
      userAvatarUrl:
      "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      description: "春日的暖陽，花開進度80%，準備和愛車路過全世界，感受獨具魅力的嶺南文化!",
      title: "影片標題",
      likes: "365",
      likeStatus: "1",
      comments: "425",
      shares: "253",
      watchers: "854",
      favorites: "524",
      time: "2023年12月16日",
      videoTags: [
        VideoTag(tagId: "1111", tagName: "今天去哪玩"),
        VideoTag(tagId: "1111", tagName: "南京車友圈"),
        VideoTag(tagId: "1111", tagName: "活動名稱"),
      ]),
  VideoData(
      id: "111",
      uid: "1233",
      type: "1",
      videoUrl: "https://static.ybhospital.net/test-video-6.mp4",
      albumImg:
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F05%2F20210705100427_ee4b8.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1628415177&t=87962cc902fb5925da0a4d60d4c48ca9",
      userName: "發佈人名稱",
      userAvatarUrl:
      "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      description: "春日的暖陽，花開進度80%，準備和愛車路過全世界，感受獨具魅力的嶺南文化!",
      title: "影片標題",
      likes: "352",
      likeStatus: "1",
      comments: "585",
      shares: "425",
      watchers: "825",
      favorites: "245",
      time: "2023年12月16日",
      videoTags: [
        VideoTag(tagId: "1111", tagName: "今天去哪玩"),
        VideoTag(tagId: "1111", tagName: "南京車友圈"),
        VideoTag(tagId: "1111", tagName: "活動名稱"),
      ]),
  VideoData(
      id: "2525",
      uid: "35435",
      type: "1",
      videoUrl: "https://media.w3.org/2010/05/sintel/trailer.mp4",
      albumImg:
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F05%2F20210705100427_ee4b8.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1628415177&t=87962cc902fb5925da0a4d60d4c48ca9",
      userName: "發佈人名稱",
      userAvatarUrl:
      "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      description: "春日的暖陽，花開進度80%，準備和愛車路過全世界，感受獨具魅力的嶺南文化!",
      title: "影片標題",
      likes: "252",
      likeStatus: "1",
      comments: "424",
      shares: "245",
      watchers: "453",
      favorites: "523",
      time: "2023年12月16日",
      videoTags: [
        VideoTag(tagId: "1111", tagName: "今天去哪玩"),
        VideoTag(tagId: "1111", tagName: "南京車友圈"),
        VideoTag(tagId: "1111", tagName: "活動名稱"),
      ]),
  VideoData(
      id: "2525",
      uid: "35435",
      type: "1",
      videoUrl: "https://jomin-web.web.app/resource/video/video_iu.mp4",
      albumImg:
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202107%2F05%2F20210705100427_ee4b8.thumb.1000_0.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1628415177&t=87962cc902fb5925da0a4d60d4c48ca9",
      userName: "發佈人名稱",
      userAvatarUrl:
      "https://p16-tiktokcdn-com.akamaized.net/aweme/720x720/tiktok-obj/1663771856684033.jpeg",
      description: "春日的暖陽，花開進度80%，準備和愛車路過全世界，感受獨具魅力的嶺南文化!",
      title: "影片標題",
      likes: "252",
      likeStatus: "1",
      comments: "424",
      shares: "245",
      watchers: "453",
      favorites: "523",
      time: "2023年12月16日",
      videoTags: [
        VideoTag(tagId: "1111", tagName: "今天去哪玩"),
        VideoTag(tagId: "1111", tagName: "南京車友圈"),
        VideoTag(tagId: "1111", tagName: "活動名稱"),
      ]),
];