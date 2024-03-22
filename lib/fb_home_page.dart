import 'package:assing_one_sakariye/post_item.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'post.dart';
import 'shimmer_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Faker _faker = Faker();
  late List<Post> _posts;
  late bool _isLoading;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _fetchPosts();
  }

  void _fetchPosts() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _posts = List.generate(
          10,
          (index) => Post(
            title: _faker.lorem.sentence(),
            body: _faker.lorem.sentences(3).join(' '),
          ),
        );
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/facebook_logo1.png',
              alignment: const Alignment(0, 0),
              height: 36,
            ),
            const SizedBox(width: 8),
            LayoutBuilder(
              builder: (context, constraints) {
                return constraints.maxWidth < 600
                    ? const Text(
                        'Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      )
                    : const Text(
                        'Facebook',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      );
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Implement menu functionality
            },
          ),
        ],
      ),
      body: _isLoading ? _buildShimmerList() : _buildPostList(),
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ShimmerItem();
      },
    );
  }

  Widget _buildPostList() {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        return PostItem(post: _posts[index]);
      },
    );
  }
}
