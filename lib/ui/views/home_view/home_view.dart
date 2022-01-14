import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sync_home/shared/services/ui_services/device_ui_service.dart';
import 'package:sync_home/ui/components/button/buttons.dart';
import 'package:sync_home/ui/components/weather_card/weather_card.dart';
import 'package:sync_home/ui/shared/all_device_view/all_device_view.dart';

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
            WeatherCard(),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Devices',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {
                Get.to(() => const AllDeviceView(),
                    transition: Transition.rightToLeft);
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
            children: [
              Wrap(
                spacing: 10,
                children: [
                  for (var device in DeviceUiService.devices)
                    CircularDeviceButton(device: device)
                ],
              ),
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
