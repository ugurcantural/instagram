import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  final String imgProfile;
  final String userName;
  final String imgPost;
  final String description;

  const AddPost({
    Key? key,
    required this.imgProfile,
    required this.userName,
    required this.imgPost,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/$imgProfile'),
                    radius: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 400,
          child: Image.asset(
            'assets/images/$imgPost',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.favorite_border_outlined, size: 32),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.mode_comment_outlined, size: 32),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.send_outlined, size: 32),
                  ),
                ],
              ),
              const Icon(Icons.save_alt_outlined, size: 32),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                userName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(description),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
