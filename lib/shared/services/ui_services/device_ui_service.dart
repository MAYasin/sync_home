import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sync_home/shared/models/device_model.dart';

class DeviceUiService {
  static List<DeviceModel> devices = [
    DeviceModel(
      title: 'Lights',
      icon: Icons.wb_sunny_outlined,
      color: Colors.amber,
    ),
    DeviceModel(
      title: 'CCTV',
      icon: Icons.camera_outdoor_outlined,
      color: Colors.purple,
    ),
    DeviceModel(
      title: 'Wi-Fi',
      icon: Icons.wifi_outlined,
      color: Colors.red,
    ),
    DeviceModel(
      title: 'Media',
      icon: Icons.speaker_outlined,
      color: Colors.green,
    ),
    DeviceModel(
      title: 'Thermostat',
      icon: Icons.thermostat_outlined,
      color: Colors.pink,
    ),
    DeviceModel(
      title: 'Fridge',
      icon: Icons.kitchen_outlined,
      color: Colors.blue,
    ),
    DeviceModel(
      title: 'Freezer',
      icon: FontAwesomeIcons.snowflake,
      color: Colors.cyan,
    ),
    DeviceModel(
      title: 'Microwave',
      icon: Icons.microwave_outlined,
      color: Colors.orange,
    ),
    DeviceModel(
      title: 'Computer',
      icon: Icons.computer_outlined,
      color: Colors.brown,
    ),
    DeviceModel(
      title: 'Fans',
      icon: FontAwesomeIcons.fan,
      color: Colors.lime,
    ),
    DeviceModel(
      title: 'Air-Con',
      icon: Icons.ac_unit_outlined,
      color: Colors.deepOrange,
    ),
    DeviceModel(
      title: 'Switches',
      icon: Icons.toggle_off_outlined,
      color: Colors.teal,
    ),
    DeviceModel(
      title: 'Clocks',
      icon: Icons.access_time_outlined,
      color: Colors.blueGrey,
    ),
    DeviceModel(
      title: 'Oven',
      icon: Icons.breakfast_dining_outlined,
      color: Colors.indigo,
    ),
  ];
}
