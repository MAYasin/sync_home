import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CircularDeviceButton extends StatelessWidget {
  const CircularDeviceButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color[100],
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class DeviceButton extends StatefulWidget {
  const DeviceButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function onTap;

  @override
  State<DeviceButton> createState() => _DeviceButtonState();
}

class _DeviceButtonState extends State<DeviceButton> {
  bool toggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap;
        HapticFeedback.vibrate();
        setState(() {
          toggled = !toggled;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: toggled ? Colors.amber[100] : Colors.lightBlue[50],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.wb_sunny_outlined,
              color: Colors.grey[700],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Lights',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
