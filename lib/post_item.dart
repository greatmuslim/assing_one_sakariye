import 'package:flutter/material.dart';
import 'post.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24.0,
                  backgroundColor: Colors.grey[300],
                  backgroundImage:
                      const AssetImage('assets/images/profile_image.png'),
                ),
                const SizedBox(width: 12.0),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sakariye',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Just now',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),
          const Divider(height: 0),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  post.body,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const SizedBox(height: 12.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.thumb_up_outlined, size: 20.0),
                    SizedBox(width: 8.0),
                    Text('Like'),
                    SizedBox(width: 20.0),
                    Icon(Icons.comment_outlined, size: 20.0),
                    SizedBox(width: 8.0),
                    Text('Comment'),
                    SizedBox(width: 20.0),
                    Icon(Icons.share_outlined, size: 20.0),
                    SizedBox(width: 8.0),
                    Text('Share'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
