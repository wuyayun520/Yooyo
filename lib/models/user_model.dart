class UserModel {
  final String userId;
  final String name;
  final String icon;
  final String background;
  final String chatBackground;
  final String introduction;
  final String signature;
  final List<PostModel> posts;

  UserModel({
    required this.userId,
    required this.name,
    required this.icon,
    required this.background,
    required this.chatBackground,
    required this.introduction,
    required this.signature,
    required this.posts,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'] ?? '',
      name: json['name'] ?? '',
      icon: json['icon'] ?? '',
      background: json['Backgroud'] ?? '',
      chatBackground: json['chatBackgroud'] ?? '',
      introduction: json['introduction'] ?? '',
      signature: json['signature'] ?? '',
      posts: (json['post'] as List<dynamic>?)
          ?.map((post) => PostModel.fromJson(post))
          .toList() ?? [],
    );
  }
}

class PostModel {
  final String postId;
  final String message;
  final String videoUrl;

  PostModel({
    required this.postId,
    required this.message,
    required this.videoUrl,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      postId: json['postId'] ?? '',
      message: json['message'] ?? '',
      videoUrl: json['videoUrl'] ?? '',
    );
  }
}

class UserData {
  final List<UserModel> allData;

  UserData({required this.allData});

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      allData: (json['allData'] as List<dynamic>?)
          ?.map((user) => UserModel.fromJson(user))
          .toList() ?? [],
    );
  }
} 