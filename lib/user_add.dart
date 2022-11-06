import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  final String imgPath;
  final Color colorStory;
  final String userName;
  final Color colorName;
  final bool iconvar;

  const AddUser({
    Key? key,
    required this.imgPath,
    this.colorStory = Colors.red,
    required this.userName,
    this.colorName = Colors.black,
    this.iconvar = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: colorStory, width: 2),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/$imgPath'),
              backgroundColor: Colors.transparent,
              radius: 30,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.add_circle,
                    color: iconvar ? Colors.blue : Colors.transparent),
              ),
            ),
          ),
          SizedBox(
            width: 75,
            child: Text(
              userName,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.fade,
              softWrap: false,
              style: TextStyle(
                fontSize: 12,
                color: colorName,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
