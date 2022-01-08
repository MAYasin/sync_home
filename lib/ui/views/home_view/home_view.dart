import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sync_home/ui/components/weather_card/weather_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Row(
              children: const [
                Text(
                  'Home Members',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: double.infinity,
              child: WeatherCard(),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Devices',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
              SizedBox(width: 20),
              CircularDeviceButton(),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Rooms',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount:
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 3
                  : 4,
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
        ),
      ],
    );
  }
}

class CircularDeviceButton extends StatelessWidget {
  const CircularDeviceButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.pink[300],
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.wb_sunny_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Lights',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
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
