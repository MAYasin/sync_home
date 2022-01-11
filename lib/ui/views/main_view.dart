import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sync_home/shared/services/weather_service.dart';
import 'package:sync_home/ui/shared/base_view.dart';
import 'package:sync_home/ui/views/main_view_controller.dart';

class MainView extends StatefulWidget {
  MainView({Key? key}) : super(key: key);
  final MainViewController controller = Get.put(MainViewController());
  WeatherService weatherService = Get.put(WeatherService());

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainViewController>(builder: (_) {
      return BaseView(
        child: _.getTabPage(_.tabIndex),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.mic,
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        title: Text(
          _.tabIndex == 0 ? 'My Home' : 'Rooms',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 6,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  highlightColor: Colors.grey[300],
                  onTap: () {
                    HapticFeedback.vibrate();
                    _.changeTabIndex(0);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(
                            Icons.home,
                            color: _.tabIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  highlightColor: Colors.grey[300],
                  onTap: () {
                    HapticFeedback.vibrate();
                    _.changeTabIndex(1);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(
                            Icons.door_front_door,
                            color: _.tabIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
