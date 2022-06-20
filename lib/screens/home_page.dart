import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "facebook",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey[400],
          ),
          const SizedBox(
            width: 10,
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.grey[400],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          // #post_view
          Container(
            height: 120,
            color: Colors.black,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/img.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What's your on mind?",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Live", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[300],
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Photo", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[300],
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Check in", style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // #post_stories
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 10,
                ),
                makeStory(
                    storyImage: "assets/images/img_1.png",
                    userImage: "assets/images/img.png",
                    userName: "User 1"),
                const SizedBox(
                  width: 10,
                ),
                makeStory(
                    storyImage: "assets/images/img_1.png",
                    userImage: "assets/images/img.png",
                    userName: "User 2"),
                const SizedBox(
                  width: 10,
                ),
                makeStory(
                    storyImage: "assets/images/img_1.png",
                    userImage: "assets/images/img.png",
                    userName: "User 3"),
                const SizedBox(
                  width: 10,
                ),
                makeStory(
                    storyImage: "assets/images/img_1.png",
                    userImage: "assets/images/img.png",
                    userName: "User 4"),
                const SizedBox(
                  width: 10,
                ),
                makeStory(
                    storyImage: "assets/images/img_1.png",
                    userImage: "assets/images/img.png",
                    userName: "User 5"),
              ],
            ),
          ),

          // #post_feet
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_2.png",
            feedTime: "1h ago",
            feedText:
                "Lorem ipsum ehfgewqwqdqwd wdqwefwefwiugbgiwrfiowndqwibeiyd",
            feedImage: "assets/images/img_3.png",
            feedImage2: "assets/images/img_4.png",
          ),

          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_2.png",
            feedTime: "1h ago",
            feedText:
            "Lorem ipsum ehfgewqwqdqwd wdqwefwefwiugbgiwrfiowndqwibeiyd",
            feedImage: "assets/images/img_3.png",
            feedImage2: "assets/images/img_4.png",
          ),

          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_2.png",
            feedTime: "1h ago",
            feedText:
            "Lorem ipsum ehfgewqwqdqwd wdqwefwefwiugbgiwrfiowndqwibeiyd",
            feedImage: "assets/images/img_3.png",
            feedImage2: "assets/images/img_4.png",
          ),

          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_2.png",
            feedTime: "1h ago",
            feedText:
            "Lorem ipsum ehfgewqwqdqwd wdqwefwefwiugbgiwrfiowndqwibeiyd",
            feedImage: "assets/images/img_3.png",
            feedImage2: "assets/images/img_4.png",
          ),
        ],
      ),
    );
  }

  // #stories_function
  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage, feedImage2}) {
    return Container(

      margin: const EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  feedText,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.5,
                      letterSpacing: 0.7),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          // #photo
          Container(
            child: Row(
              children: [
                Expanded(child: Image.asset(feedImage),),
                Expanded(child: Image.asset(feedImage2),),
              ],
            ),
            //
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(feedImage),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          // # likes
           const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: const Offset(-5, 0),
                      child: makeLove(),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2.5K",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
                Text(
                  "400 Comment",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),

          // #like, comment, share
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),

    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.chat,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Icon(
          Icons.thumb_up,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Icon(
          Icons.favorite,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
