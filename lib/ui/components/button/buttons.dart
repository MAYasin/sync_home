import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sync_home/shared/models/device_model.dart';

class CircularDeviceButton extends StatelessWidget {
  const CircularDeviceButton({
    Key? key,
    required this.device,
  }) : super(key: key);

  final DeviceModel device;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: device.color[100],
            child: IconButton(
              alignment: Alignment.topCenter,
              iconSize: 30,
              onPressed: () {},
              icon: Icon(
                device.icon,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            device.title,
            softWrap: false,
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

class RoomButton extends StatefulWidget {
  const RoomButton({
    Key? key,
    required this.onTap,
    required this.name,
    required this.icon,
  }) : super(key: key);

  final Function onTap;
  final String name;
  final IconData icon;

  @override
  State<RoomButton> createState() => _RoomButtonState();
}

class _RoomButtonState extends State<RoomButton> {
  Color textColorLight = const Color.fromARGB(255, 145, 145, 145);
  Color borderColorLight = const Color.fromARGB(242, 242, 242, 255);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap;
        HapticFeedback.vibrate();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: textColorLight, width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Icon(
                    widget.icon,
                    size: 50,
                    color: textColorLight,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
