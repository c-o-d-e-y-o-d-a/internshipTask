import 'package:flutter/material.dart';
import 'package:internship_task/screens/main_screen.dart';

class ActionBar extends StatefulWidget {
  const ActionBar({super.key});

  @override
  _ActionBarState createState() => _ActionBarState();
}

class _ActionBarState extends State<ActionBar> {
  bool isMuted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 10.0), // Added padding for better layout
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Mute Notification',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              SwitchTheme(
                data: SwitchThemeData(
                  trackColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.white; // Background color when switch is on
                    }
                    return Colors.white; // Background color when switch is off
                  }),
                  thumbColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.red; // Thumb color when switch is on
                    }
                    return Colors.grey; // Thumb color when switch is off
                  }),
                  overlayColor: MaterialStateProperty.all(
                      Colors.transparent), // Remove default border overlay
                ),
                child: Switch(
                  
                  value: isMuted,
                  onChanged: (value) {
                    setState(() {
                      isMuted = value;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8), // Spacing between rows
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Icon(Icons.delete_outline, size: 25.0),
              SizedBox(width: 10), // Spacing between icon and text
              Text('Clear chat', style: TextStyle(fontSize: 14.0)),
            ],
          ),
          SizedBox(height: 12), // Spacing between rows
          Row(
            children: [
              SizedBox(width: 8,),
              Icon(Icons.lock_outline, size: 25.0),
              SizedBox(width: 10), // Spacing between icon and text
              Text('Encryptions', style: TextStyle(fontSize: 14.0)),
            ],
          ),
          SizedBox(height: 12), // Spacing between rows
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Icon(Icons.logout, size: 25.0,
                color: sec,
              ),
              SizedBox(width: 10), // Spacing between icon and text
              Text('Exit Community', style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: sec)),
            ],
          ),
          SizedBox(height: 12), // Spacing between rows
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Icon(Icons.thumb_down_outlined, size: 25.0,
                color: sec,
              ),
              SizedBox(width: 10), // Spacing between icon and text
              Text('Report', style: TextStyle(fontSize: 14.0,
              fontWeight: FontWeight.w500, color: sec),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
