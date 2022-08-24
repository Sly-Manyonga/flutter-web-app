import 'package:flutter/material.dart';

class FloatingBarElement extends StatefulWidget {
  // Attributes.
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const FloatingBarElement({Key? key, required this.text, required this.onTap, required this.icon}) : super(key: key);

  @override
  State<FloatingBarElement> createState() => _FloatingBarElementState();
}

class _FloatingBarElementState extends State<FloatingBarElement> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 45, bottom: MediaQuery.of(context).size.height / 45, left: MediaQuery.of(context).size.width / 40),
      child: Row(
        children: [
          Icon(widget.icon, color: _isHovering ? Colors.blueGrey[50] : Colors.blueGrey),
          SizedBox(width: MediaQuery.of(context).size.width / 50),
          InkWell(
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onHover: (value) => value ? _isHovering = true : _isHovering = false,
            onTap: widget.onTap,
            child: Text(
              widget.text,
              style: TextStyle(color: _isHovering ? Colors.blueGrey[50] : Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
