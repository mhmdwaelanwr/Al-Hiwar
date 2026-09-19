import 'package:bookly/constants/constant_app_dimentions.dart';
import 'package:bookly/constants/constant_text_style.dart';
import 'package:bookly/core/common/special_scaffold_with_backgound.dart';
import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsView extends StatelessWidget {
  // Define all the URLs
  final Uri facebookUrl = Uri.parse(
    'https://www.facebook.com/share/1CXsYYuPYe/?mibextid=wwXIfr',
  );

  final Uri instagramUrl = Uri.parse(
    'https://www.instagram.com/alhiwaraliqtisadi?igsh=cnI2cW1tMjhhcHoy&utm_source=qr',
  );

  final Uri threadsUrl = Uri.parse(
    'https://www.threads.com/@alhiwaraliqtisadi?igshid=NTc4MTIwNjQ2YQ==',
  );

  final Uri youtubeUrl = Uri.parse(
    'https://youtube.com/channel/UClSpCa4VCnEPx9CjbAf0ZPg?si=ItuxOotx9ZNvChSY',
  );

  final Uri xUrl = Uri.parse('https://x.com/alhiwarecotv?s=11');

  // Function to launch URL
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SpecialScaffoldWithBackground(
      backgroundImage: AssetImages.background3,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Text(
            S.of(context).ContactUsTitle,
            style: TextStyles.textStyleBigWhite,
          ),
          SizedBox(height: 20),
          Text(
            S.of(context).ContactUsSubTitle,
            style: TextStyles.textStyleSmallSilver,
          ),
          SizedBox(height: 20),
          ContactUsContainer(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text(
                  "facebook",
                  style: TextStyles.textStyleNormalWhiteWithUnderLine,
                ),
                onPressed: () => _launchUrl(facebookUrl),
              ),
              Icon(
                Icons.facebook,
                color: Colors.white,
                size: AppDimensions.iconSize(),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text(
                  "instagram",
                  style: TextStyles.textStyleNormalWhiteWithUnderLine,
                ),
                onPressed: () => _launchUrl(instagramUrl),
              ),
              AssetImages.instagram,
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text(
                  "Threads",
                  style: TextStyles.textStyleNormalWhiteWithUnderLine,
                ),
                onPressed: () => _launchUrl(threadsUrl),
              ),
              Text(" @", style: TextStyles.textStyleBigWhite),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text(
                  "Youtube",
                  style: TextStyles.textStyleNormalWhiteWithUnderLine,
                  textDirection: TextDirection.rtl,
                ),
                onPressed: () => _launchUrl(youtubeUrl),
              ),
              Icon(
                Icons.ondemand_video_rounded,
                color: Colors.white,
                size: AppDimensions.iconSize(),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Text(
                  "Twitter",
                  style: TextStyles.textStyleNormalWhiteWithUnderLine,
                  textDirection: TextDirection.rtl,
                ),
                onPressed: () => _launchUrl(xUrl),
              ),
              Text(" X", style: TextStyles.textStyleBigWhite),
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class ContactUsContainer extends StatelessWidget {
  ContactUsContainer({super.key});

  final Uri phoneNumber = Uri(scheme: 'tel', path: '+966570104349');
  Future<void> _launchPhone() async {
    if (!await launchUrl(phoneNumber)) {
      throw Exception('Could not launch $phoneNumber');
    }
  }

  final Uri emailUrl = Uri(
    scheme: 'mailto',
    path: 'info@alhiwar.sa',
  );

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  S.of(context).ContactUsLocation,
                  style: TextStyles.textStyleNormalWhite,
                  
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.location_on, color: Colors.white),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: _launchPhone,
                  child: Text(
                    "+966570104349",
                    style: TextStyles.textStyleNormalWhite,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.call, color: Colors.white),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => _launchUrl(emailUrl),
                  child: Text(
                    "info@alhiwar.sa",
                    style: TextStyles.textStyleNormalWhite,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.email, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
