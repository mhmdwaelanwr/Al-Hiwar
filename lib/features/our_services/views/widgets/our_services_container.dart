import 'package:bookly/constants/constant_colors.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';

class OurServicesWidget extends StatelessWidget {
  const OurServicesWidget({
    super.key,
    required this.title,
    required this.description,
    required this.viewToDetails,
    required this.icon,
  });

  final String title;
  final String description;
  final Widget viewToDetails;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: ksilverColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Icon(icon, color: kPrimaryColor, size: 50),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.textStyleNormalWhite),
                Text(description, style: TextStyles.textStyleSmallSilver),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (co) => viewToDetails),
                    );
                  },
                  child: Text(
                    S.of(context).ourServicesContainerTextButton,
                    style: TextStyles.textStyleNormalGreenWithLine,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
