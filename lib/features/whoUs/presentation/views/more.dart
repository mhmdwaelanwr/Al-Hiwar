import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class MoreWhoUsView extends StatefulWidget {
  const MoreWhoUsView({super.key});

  @override
  State<MoreWhoUsView> createState() => _MoreWhoUsViewState();
}

class _MoreWhoUsViewState extends State<MoreWhoUsView> {
  final List<bool> _selectedInList = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background1,
      body: Column(
        children: [
          ToggleButtons(
            onPressed: (index) {
              setState(() {
                _selectedInList[index] = !_selectedInList[index];
              });
            },
            isSelected: _selectedInList,
            children: [
              Text("اهدافنا", style: TextStyle(color: Colors.white)),
              Text("رؤيتنا", style: TextStyle(color: Colors.white)),
              Text("رسالتنا", style: TextStyle(color: Colors.white)),
              Text("قيمنا", style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
