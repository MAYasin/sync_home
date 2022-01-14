import 'package:flutter/material.dart';
import 'package:sync_home/shared/services/ui_services/device_ui_service.dart';
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
        spacing: 40,
        runSpacing: 35,
        children: [
          for (var device in DeviceUiService.devices)
            CircularDeviceButton(device: device)
        ],
      ),
    );
  }
}
