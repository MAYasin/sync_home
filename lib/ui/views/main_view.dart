import 'package:flutter/material.dart';
import 'package:sync_home/constants/style.dart';
import 'package:sync_home/ui/shared/base_view.dart';
import 'package:sync_home/ui/views/home_view/home_view.dart';
import 'package:sync_home/ui/views/room_view/room_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    RoomView(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return BaseView(
      child: PageStorage(
        child: _widgetOptions.elementAt(_selectedIndex),
        bucket: bucket,
      ),
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
        _selectedIndex == 0 ? 'Home' : 'Rooms',
        style: const TextStyle(color: Colors.black),
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
                  setState(() {
                    _selectedIndex = 0;
                  });
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
                          color:
                              _selectedIndex == 0 ? Colors.blue : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                highlightColor: Colors.grey[300],
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
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
                          color:
                              _selectedIndex == 1 ? Colors.blue : Colors.grey,
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
  }
}
