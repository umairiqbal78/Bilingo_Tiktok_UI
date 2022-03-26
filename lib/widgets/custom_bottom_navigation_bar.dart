import 'package:flutter/material.dart';
import 'package:tiktokapp/pages/add_video_page.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  @override
  Widget build(BuildContext context) {
    final barHeight = MediaQuery.of(context).size.height * 0.07;
    final style = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(fontSize: 11, fontWeight: FontWeight.w600);
    return BottomAppBar(
      color: selectedPageIndex == 0 ? Colors.black : Colors.white,
      child: Container(
        height: barHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _bottomBarNavItem(0, 'Home', style, 'home'),
            _bottomBarNavItem(1, 'Discover', style, 'search'),
            _addVideoNavItem(2, barHeight, context),
            _bottomBarNavItem(3, 'Inbox', style, 'chat'),
            _bottomBarNavItem(4, 'Profile', style, 'user')
          ],
        ),
      ),
    );
  }

  _bottomBarNavItem(
      int index, String label, TextStyle textStyle, String iconName) {
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Colors.black : Colors.grey;

    if (isSelected && selectedPageIndex == 0) {
      iconAndTextColor = Colors.white;
    }
    return GestureDetector(
      onTap: () => {onIconTap(index)},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/${isSelected ? iconName + '_filled' : iconName}.png",
            height: 20,
            width: 20,
            color: iconAndTextColor,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(label, style: textStyle.copyWith(color: iconAndTextColor))
        ],
      ),
    );
  }

  _addVideoNavItem(int index, double height, BuildContext context) {
    return GestureDetector(
      onTap: () => {
        onIconTap(index),
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) {
              return const AddVideoPage();
            },
          ),
        ),
      },
      child: Container(
        height: height - 15,
        width: 48,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blueAccent, Colors.redAccent],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Container(
            width: 41,
            height: height - 15,
            decoration: BoxDecoration(
              color: selectedPageIndex == 0 ? Colors.white : Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.add,
                color: selectedPageIndex == 0 ? Colors.black : Colors.white),
          ),
        ),
      ),
    );
  }
}
