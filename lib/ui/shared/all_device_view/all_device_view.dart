import 'package:flutter/material.dart';
import 'package:sync_home/ui/components/button/buttons.dart';
import 'package:sync_home/ui/shared/base_view.dart';

class AllDeviceView extends StatelessWidget {
  const AllDeviceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      centerTitle: true,
      title: const Text(
        'All Devices',
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Wrap(
        spacing: 35,
        runSpacing: 20,
        children: const [
          CircularDeviceButton(
            title: 'Lights',
            icon: Icons.wb_sunny_outlined,
            color: Colors.amber,
          ),
          CircularDeviceButton(
            title: 'CCTV',
            icon: Icons.camera_outdoor_outlined,
            color: Colors.purple,
          ),
          CircularDeviceButton(
            title: 'Wi-Fi',
            icon: Icons.wifi_outlined,
            color: Colors.blue,
          ),
          CircularDeviceButton(
            title: 'Media',
            icon: Icons.speaker_outlined,
            color: Colors.green,
          ),
          CircularDeviceButton(
            title: 'Thermostat',
            icon: Icons.thermostat_outlined,
            color: Colors.pink,
          ),
          CircularDeviceButton(
            title: 'CCTV',
            icon: Icons.camera_outdoor_outlined,
            color: Colors.purple,
          ),
          CircularDeviceButton(
            title: 'Wi-Fi',
            icon: Icons.wifi_outlined,
            color: Colors.blue,
          ),
          CircularDeviceButton(
            title: 'Media',
            icon: Icons.speaker_outlined,
            color: Colors.green,
          ),
          CircularDeviceButton(
            title: 'Thermostat',
            icon: Icons.thermostat_outlined,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
