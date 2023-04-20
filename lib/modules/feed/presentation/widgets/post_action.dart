import 'package:flutter/material.dart';

class PostAction extends StatefulWidget {
  const PostAction({
    super.key, 
    required this.icon, 
    required this.number,
    required this.callback
  });

  final IconData icon;
  final int number;
  final VoidCallback callback;

  @override
  State<PostAction> createState() => _PostActionState();
}

class _PostActionState extends State<PostAction> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.callback,
      child: Row(
        children: [
          Icon(widget.icon, color: Colors.grey[400],),
          Text('${widget.number}', style: TextStyle(color: Colors.grey[400]),)
        ],
      ),
    );
  }
}