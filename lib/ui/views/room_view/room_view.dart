import 'package:flutter/material.dart';
import 'package:sync_home/ui/components/button/buttons.dart';

class RoomView extends StatelessWidget {
  const RoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount:
          MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 4,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: [
        RoomButton(
          onTap: () {},
          name: 'Bedroom',
          icon: Icons.bedroom_parent_outlined,
        ),
        RoomButton(
          onTap: () {},
          name: 'Bedroom',
          icon: Icons.bedroom_child_outlined,
        ),
        RoomButton(
          onTap: () {},
          name: 'Kitchen',
          icon: Icons.kitchen,
        ),
        RoomButton(
          onTap: () {},
          name: 'Living Room',
          icon: Icons.tv,
        ),
        RoomButton(
          onTap: () {},
          name: 'Dining Room',
          icon: Icons.table_restaurant,
        ),
      ],
    );
  }
}
