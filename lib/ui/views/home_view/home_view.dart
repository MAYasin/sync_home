import 'package:flutter/material.dart';

import '../../shared/base_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: [
        DeviceButton(
          onTap: () {},
        ),
        DeviceButton(
          onTap: () {},
        ),
        DeviceButton(
          onTap: () {},
        ),
        DeviceButton(
          onTap: () {},
        ),
        DeviceButton(
          onTap: () {},
        ),
        DeviceButton(
          onTap: () {},
        ),
      ],
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
