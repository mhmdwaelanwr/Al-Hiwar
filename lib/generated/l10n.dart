// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get applicationLanguages {
    return Intl.message(
      'English',
      name: 'applicationLanguages',
      desc: '',
      args: [],
    );
  }

  /// `An economic platform that elevates investors' thinking. We produce dynamic economic media that monitors market movements moment by moment and highlights success stories and promising investment initiatives in the Gulf and the Arab world.`
  String get onBoardingTitle1 {
    return Intl.message(
      'An economic platform that elevates investors\' thinking. We produce dynamic economic media that monitors market movements moment by moment and highlights success stories and promising investment initiatives in the Gulf and the Arab world.',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Smart marketing solutions that transform your digital presence into economic power. We design integrated packages that strengthen your brand's dominance in the Gulf market, linking your media strength on our screen with your digital reach across platforms.`
  String get onBoardingTitle2 {
    return Intl.message(
      'Smart marketing solutions that transform your digital presence into economic power. We design integrated packages that strengthen your brand\'s dominance in the Gulf market, linking your media strength on our screen with your digital reach across platforms.',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Start your journey towards market dominance`
  String get onBoardingTitle21 {
    return Intl.message(
      'Start your journey towards market dominance',
      name: 'onBoardingTitle21',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onBoardingbuttonNext {
    return Intl.message(
      'Next',
      name: 'onBoardingbuttonNext',
      desc: '',
      args: [],
    );
  }

  /// `Your media partners in the world of investment and economics:`
  String get afterONBoardingTitle {
    return Intl.message(
      'Your media partners in the world of investment and economics:',
      name: 'afterONBoardingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Impactful economic content, professional marketing that strengthens your investment presence, and a leading digital channel that highlights success stories and builds your investment presence in the Gulf region.`
  String get afterONBoardingSubTitle1 {
    return Intl.message(
      'Impactful economic content, professional marketing that strengthens your investment presence, and a leading digital channel that highlights success stories and builds your investment presence in the Gulf region.',
      name: 'afterONBoardingSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `At Economic Dialogue, we carry your investment message to the audience through a satellite channel, digital platforms, and comprehensive media and marketing coverage. Whether you are seeking professional marketing, strong media exposure, or strategic partnerships, we provide you with the tools that create impact and drive your business toward presence and expansion in the Gulf.`
  String get afterONBoardingSubTitle2 {
    return Intl.message(
      'At Economic Dialogue, we carry your investment message to the audience through a satellite channel, digital platforms, and comprehensive media and marketing coverage. Whether you are seeking professional marketing, strong media exposure, or strategic partnerships, we provide you with the tools that create impact and drive your business toward presence and expansion in the Gulf.',
      name: 'afterONBoardingSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Join the live broadcast now`
  String get afterONBoardingbutton {
    return Intl.message(
      'Join the live broadcast now',
      name: 'afterONBoardingbutton',
      desc: '',
      args: [],
    );
  }

  /// `Al Hiwar TV`
  String get drawerMainTitle {
    return Intl.message(
      'Al Hiwar TV',
      name: 'drawerMainTitle',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get drawerMainScreen {
    return Intl.message('Home', name: 'drawerMainScreen', desc: '', args: []);
  }

  /// `About Us`
  String get drawerWhoUsScreen {
    return Intl.message(
      'About Us',
      name: 'drawerWhoUsScreen',
      desc: '',
      args: [],
    );
  }

  /// `Our Services`
  String get drawerOurServicesScreen {
    return Intl.message(
      'Our Services',
      name: 'drawerOurServicesScreen',
      desc: '',
      args: [],
    );
  }

  /// `Blog`
  String get drawerOurDownloadScreen {
    return Intl.message(
      'Blog',
      name: 'drawerOurDownloadScreen',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get drawerOurContactUsScreen {
    return Intl.message(
      'Contact Us',
      name: 'drawerOurContactUsScreen',
      desc: '',
      args: [],
    );
  }

  /// `Who We Are!`
  String get whoUsTitle1 {
    return Intl.message('Who We Are!', name: 'whoUsTitle1', desc: '', args: []);
  }

  /// `A platform that drives investment and builds presence`
  String get whoUsTitle2 {
    return Intl.message(
      'A platform that drives investment and builds presence',
      name: 'whoUsTitle2',
      desc: '',
      args: [],
    );
  }

  /// `A platform that drives investment and builds presence`
  String get whoUsWhiteSubTitle1 {
    return Intl.message(
      'A platform that drives investment and builds presence',
      name: 'whoUsWhiteSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Economic Dialogue — A leading Saudi platform in specialized media, strategic marketing, and creative production. We operate through:`
  String get whoUsGreenSubTitle1 {
    return Intl.message(
      'Economic Dialogue — A leading Saudi platform in specialized media, strategic marketing, and creative production. We operate through:',
      name: 'whoUsGreenSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `-   A satellite TV channel broadcasting 24/7 via Nilesat.\n-   A digital app for live streaming + an on-demand video library.\n-   Integrated social media platforms.\n-   Professional video content production.\n-   Our website: your comprehensive gateway to the digital economy 🌐`
  String get whoUsGreenSubTitle2 {
    return Intl.message(
      '-   A satellite TV channel broadcasting 24/7 via Nilesat.\n-   A digital app for live streaming + an on-demand video library.\n-   Integrated social media platforms.\n-   Professional video content production.\n-   Our website: your comprehensive gateway to the digital economy 🌐',
      name: 'whoUsGreenSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Through our digital platform, we provide all app services and more in a unified environment characterized by:`
  String get whoUsGreenSubTitle3 {
    return Intl.message(
      'Through our digital platform, we provide all app services and more in a unified environment characterized by:',
      name: 'whoUsGreenSubTitle3',
      desc: '',
      args: [],
    );
  }

  /// `-   Comprehensive economic library: documentaries, reports, and full episodes on demand (VOD)\n-   High-quality live streaming of channels and events without the need to download an app.\n-   An interactive platform for direct communication with economic experts and business leaders.\n-   Custom marketing solutions instantly available through a unified interface.\n-   Our website is not just a copy of the app... it is the central hub of our digital services.`
  String get whoUsGreenSubTitle4 {
    return Intl.message(
      '-   Comprehensive economic library: documentaries, reports, and full episodes on demand (VOD)\n-   High-quality live streaming of channels and events without the need to download an app.\n-   An interactive platform for direct communication with economic experts and business leaders.\n-   Custom marketing solutions instantly available through a unified interface.\n-   Our website is not just a copy of the app... it is the central hub of our digital services.',
      name: 'whoUsGreenSubTitle4',
      desc: '',
      args: [],
    );
  }

  /// `Why was the name 'Economic Dialogue' chosen for the company?`
  String get whoUsGreenSubTitle5 {
    return Intl.message(
      'Why was the name \'Economic Dialogue\' chosen for the company?',
      name: 'whoUsGreenSubTitle5',
      desc: '',
      args: [],
    );
  }

  /// `Together we form a platform:`
  String get whoUsGreenSubTitle6 {
    return Intl.message(
      'Together we form a platform:',
      name: 'whoUsGreenSubTitle6',
      desc: '',
      args: [],
    );
  }

  /// `✓ Connecting decision-makers with the public through smart content.\n✓ Turning content into an investment engine that supports Saudi Vision 2030.\n✓ Highlighting developmental transformations in the Gulf and the Arab world.`
  String get whoUsGreenSubTitle7 {
    return Intl.message(
      '✓ Connecting decision-makers with the public through smart content.\n✓ Turning content into an investment engine that supports Saudi Vision 2030.\n✓ Highlighting developmental transformations in the Gulf and the Arab world.',
      name: 'whoUsGreenSubTitle7',
      desc: '',
      args: [],
    );
  }

  /// `Foundation`
  String get whoUsGreenSubTitle8 {
    return Intl.message(
      'Foundation',
      name: 'whoUsGreenSubTitle8',
      desc: '',
      args: [],
    );
  }

  /// `'We started from an urgent need'`
  String get whoUsGreenSubTitle9 {
    return Intl.message(
      '\'We started from an urgent need\'',
      name: 'whoUsGreenSubTitle9',
      desc: '',
      args: [],
    );
  }

  /// `Our company 'Economic Dialogue' was born as a response to a gap in the media market:`
  String get whoUsGreenSubTitle10 {
    return Intl.message(
      'Our company \'Economic Dialogue\' was born as a response to a gap in the media market:',
      name: 'whoUsGreenSubTitle10',
      desc: '',
      args: [],
    );
  }

  /// `-  The absence of a specialized platform that follows economic events moment by moment.\n-  The need for investors to have a media partner who understands the transformations of the Gulf economy.\n-  The necessity of linking national visions (such as Vision 2030) with the public through a clear economic narrative.`
  String get whoUsGreenSubTitle11 {
    return Intl.message(
      '-  The absence of a specialized platform that follows economic events moment by moment.\n-  The need for investors to have a media partner who understands the transformations of the Gulf economy.\n-  The necessity of linking national visions (such as Vision 2030) with the public through a clear economic narrative.',
      name: 'whoUsGreenSubTitle11',
      desc: '',
      args: [],
    );
  }

  /// `'We were not just reporting the news... we were part of making it'`
  String get whoUsGreenSubTitle12 {
    return Intl.message(
      '\'We were not just reporting the news... we were part of making it\'',
      name: 'whoUsGreenSubTitle12',
      desc: '',
      args: [],
    );
  }

  /// `'Why should we be your first media partner?'`
  String get whoUsGreenSubTitle13 {
    return Intl.message(
      '\'Why should we be your first media partner?\'',
      name: 'whoUsGreenSubTitle13',
      desc: '',
      args: [],
    );
  }

  /// `-  Pioneering expertise in live economic media aligned with market transformations.\n-  A satellite channel + advanced digital platforms that connect you with a wide range of investors and experts in the Gulf and the Arab world.\n-  Comprehensive marketing and media solutions that strengthen brand presence and achieve Gulf-wide reach.\n-  Professional coverage of conferences, exhibitions, and public & private sector initiatives.\n-  SEO-optimized content to boost digital visibility locally and across the Gulf.`
  String get whoUsGreenSubTitle14 {
    return Intl.message(
      '-  Pioneering expertise in live economic media aligned with market transformations.\n-  A satellite channel + advanced digital platforms that connect you with a wide range of investors and experts in the Gulf and the Arab world.\n-  Comprehensive marketing and media solutions that strengthen brand presence and achieve Gulf-wide reach.\n-  Professional coverage of conferences, exhibitions, and public & private sector initiatives.\n-  SEO-optimized content to boost digital visibility locally and across the Gulf.',
      name: 'whoUsGreenSubTitle14',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get whoUsGreenButton {
    return Intl.message('More', name: 'whoUsGreenButton', desc: '', args: []);
  }

  /// `Goals`
  String get moreTitle1 {
    return Intl.message('Goals', name: 'moreTitle1', desc: '', args: []);
  }

  /// `Our Strategic Goals:`
  String get moreTitle11 {
    return Intl.message(
      'Our Strategic Goals:',
      name: 'moreTitle11',
      desc: '',
      args: [],
    );
  }

  /// `-  Establishing the channel’s credibility as a primary reference for economic content in the Gulf and the Arab world.\n-  Building strategic alliances with business leaders and leading economic institutions.\n-  Penetrating Arab markets through innovative media solutions that keep pace with digital transformation.\n-  Empowering Saudi Vision 2030 through focused media coverage of its key projects.\n-  Developing distinguished media talents capable of leading the economic dialogue.\n-  Leading media technology by using artificial intelligence to analyze economic trends.`
  String get moreSubTitle1 {
    return Intl.message(
      '-  Establishing the channel’s credibility as a primary reference for economic content in the Gulf and the Arab world.\n-  Building strategic alliances with business leaders and leading economic institutions.\n-  Penetrating Arab markets through innovative media solutions that keep pace with digital transformation.\n-  Empowering Saudi Vision 2030 through focused media coverage of its key projects.\n-  Developing distinguished media talents capable of leading the economic dialogue.\n-  Leading media technology by using artificial intelligence to analyze economic trends.',
      name: 'moreSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Vision`
  String get moreTitle2 {
    return Intl.message('Vision', name: 'moreTitle2', desc: '', args: []);
  }

  /// `Our Vision`
  String get moreSubTitle21 {
    return Intl.message(
      'Our Vision',
      name: 'moreSubTitle21',
      desc: '',
      args: [],
    );
  }

  /// `To make Economic Dialogue the leading media platform in the Gulf and the Arab world, specializing in supporting investment, highlighting economic success stories,\nand contributing to building an informed media environment that keeps pace with developmental transformations and supports the ambitious visions of countries, led by Saudi Vision 2030.`
  String get moreSubTitle2 {
    return Intl.message(
      'To make Economic Dialogue the leading media platform in the Gulf and the Arab world, specializing in supporting investment, highlighting economic success stories,\nand contributing to building an informed media environment that keeps pace with developmental transformations and supports the ambitious visions of countries, led by Saudi Vision 2030.',
      name: 'moreSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Mission`
  String get moreTitle3 {
    return Intl.message('Mission', name: 'moreTitle3', desc: '', args: []);
  }

  /// `Our Mission`
  String get moreSubTitle31 {
    return Intl.message(
      'Our Mission',
      name: 'moreSubTitle31',
      desc: '',
      args: [],
    );
  }

  /// `'We produce media':`
  String get moreSubTitle32 {
    return Intl.message(
      '\'We produce media\':',
      name: 'moreSubTitle32',
      desc: '',
      args: [],
    );
  }

  /// `-  Realistic: accurately tracking market movements.\n-  Transformative: turning investments into success stories.\n-  Inclusive: reaching every investor through the channel, the app, and social platforms.\n-  Strategic: creating partnerships that support the Gulf and Arab economy.`
  String get moreSubTitle33 {
    return Intl.message(
      '-  Realistic: accurately tracking market movements.\n-  Transformative: turning investments into success stories.\n-  Inclusive: reaching every investor through the channel, the app, and social platforms.\n-  Strategic: creating partnerships that support the Gulf and Arab economy.',
      name: 'moreSubTitle33',
      desc: '',
      args: [],
    );
  }

  /// `Values`
  String get moreTitle4 {
    return Intl.message('Values', name: 'moreTitle4', desc: '', args: []);
  }

  /// `Our Values`
  String get moreSubTitle4 {
    return Intl.message(
      'Our Values',
      name: 'moreSubTitle4',
      desc: '',
      args: [],
    );
  }

  /// `•  Professionalism: delivering high-quality content with media expertise.\n•  Transparency: conveying economic facts and stories as they are, without distortion or exaggeration.\n•  Partnership: working hand in hand with both public and private sectors to build a strong media economy.\n•  Innovation: developing media and marketing solutions that keep pace with modern times and technologies.\n•  Credibility: building long-term trust with the audience and partners.`
  String get moreSubTitle41 {
    return Intl.message(
      '•  Professionalism: delivering high-quality content with media expertise.\n•  Transparency: conveying economic facts and stories as they are, without distortion or exaggeration.\n•  Partnership: working hand in hand with both public and private sectors to build a strong media economy.\n•  Innovation: developing media and marketing solutions that keep pace with modern times and technologies.\n•  Credibility: building long-term trust with the audience and partners.',
      name: 'moreSubTitle41',
      desc: '',
      args: [],
    );
  }

  /// `Our Services`
  String get ourServicesMainTitle {
    return Intl.message(
      'Our Services',
      name: 'ourServicesMainTitle',
      desc: '',
      args: [],
    );
  }

  /// `First:\nTV Channel and Media Department`
  String get ourServicesContainerTitle1 {
    return Intl.message(
      'First:\nTV Channel and Media Department',
      name: 'ourServicesContainerTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Production of programs, coverages, live broadcasting, and economic reports.`
  String get ourServicesContainerSubTitle1 {
    return Intl.message(
      'Production of programs, coverages, live broadcasting, and economic reports.',
      name: 'ourServicesContainerSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Second:\nMarketing, Advertising and Publicity Department`
  String get ourServicesContainerTitle2 {
    return Intl.message(
      'Second:\nMarketing, Advertising and Publicity Department',
      name: 'ourServicesContainerTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Advertising campaigns, commercial shooting, digital platform management.`
  String get ourServicesContainerSubTitle2 {
    return Intl.message(
      'Advertising campaigns, commercial shooting, digital platform management.',
      name: 'ourServicesContainerSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get ourServicesContainerTextButton {
    return Intl.message(
      'View Details',
      name: 'ourServicesContainerTextButton',
      desc: '',
      args: [],
    );
  }

  /// `Television & Media Department`
  String get ourServicesPart1Title {
    return Intl.message(
      'Television & Media Department',
      name: 'ourServicesPart1Title',
      desc: '',
      args: [],
    );
  }

  /// `● Production of economic programs and interviews with business leaders.\n● Field coverage of exhibitions, conferences, and economic events.\n● Conducting on-site interviews with influential figures in the business world.\n● Broadcasting diverse economic and social programs 24/7 via a professional satellite channel.\n● Producing documentaries and reports that highlight success stories, national projects, and investment initiatives.\n● Providing dedicated media slots for success partners on the channel and its digital platforms.\n● Managing a digital application for live streaming and on-demand content.`
  String get ourServicesPart1SubTitle {
    return Intl.message(
      '● Production of economic programs and interviews with business leaders.\n● Field coverage of exhibitions, conferences, and economic events.\n● Conducting on-site interviews with influential figures in the business world.\n● Broadcasting diverse economic and social programs 24/7 via a professional satellite channel.\n● Producing documentaries and reports that highlight success stories, national projects, and investment initiatives.\n● Providing dedicated media slots for success partners on the channel and its digital platforms.\n● Managing a digital application for live streaming and on-demand content.',
      name: 'ourServicesPart1SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Marketing, Advertising & Promotion Department`
  String get ourServicesPart2Title {
    return Intl.message(
      'Marketing, Advertising & Promotion Department',
      name: 'ourServicesPart2Title',
      desc: '',
      args: [],
    );
  }

  /// `● Delivering integrated advertising and marketing campaigns (visual, digital, field).\n● Professional shooting for commercials and marketing content.\n● Managing corporate and institutional social media accounts professionally.\n● Designing and executing effective digital marketing strategies tailored to each sector and audience.\n● Preparing and implementing flexible annual partnership packages based on client needs.\n● Providing marketing and media consultations that enhance digital presence and market influence.\n● Linking marketing campaigns with visual media to ensure wide reach and credibility.`
  String get ourServicesPart2SubTitle {
    return Intl.message(
      '● Delivering integrated advertising and marketing campaigns (visual, digital, field).\n● Professional shooting for commercials and marketing content.\n● Managing corporate and institutional social media accounts professionally.\n● Designing and executing effective digital marketing strategies tailored to each sector and audience.\n● Preparing and implementing flexible annual partnership packages based on client needs.\n● Providing marketing and media consultations that enhance digital presence and market influence.\n● Linking marketing campaigns with visual media to ensure wide reach and credibility.',
      name: 'ourServicesPart2SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dialogue Blog`
  String get archiveViewTitle {
    return Intl.message(
      'Dialogue Blog',
      name: 'archiveViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Here you will find all that is useful: topics and tutorials.`
  String get archiveViewSubTitle {
    return Intl.message(
      'Here you will find all that is useful: topics and tutorials.',
      name: 'archiveViewSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get ContactUsTitle {
    return Intl.message(
      'Contact Us',
      name: 'ContactUsTitle',
      desc: '',
      args: [],
    );
  }

  /// `We are pleased to receive your inquiries and suggestions, and we look forward to collaborating with you on distinguished media and economic projects.`
  String get ContactUsSubTitle {
    return Intl.message(
      'We are pleased to receive your inquiries and suggestions, and we look forward to collaborating with you on distinguished media and economic projects.',
      name: 'ContactUsSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Address: Saudi Arabia, Riyadh, Dammam.`
  String get ContactUsLocation {
    return Intl.message(
      'Address: Saudi Arabia, Riyadh, Dammam.',
      name: 'ContactUsLocation',
      desc: '',
      args: [],
    );
  }

  /// `Conditions`
  String get conditionsTitle {
    return Intl.message(
      'Conditions',
      name: 'conditionsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions of the Economic Dialogue Company App`
  String get conditionsTitle0 {
    return Intl.message(
      'Terms and Conditions of the Economic Dialogue Company App',
      name: 'conditionsTitle0',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the Economic Dialogue Company App. By using this app, you agree to abide by the following terms and conditions, which aim to protect the rights of both the user and the company, ensuring a safe and beneficial experience for everyone.`
  String get conditionsSubTitle0 {
    return Intl.message(
      'Welcome to the Economic Dialogue Company App. By using this app, you agree to abide by the following terms and conditions, which aim to protect the rights of both the user and the company, ensuring a safe and beneficial experience for everyone.',
      name: 'conditionsSubTitle0',
      desc: '',
      args: [],
    );
  }

  /// `1. Use of the App`
  String get conditionsTitle1 {
    return Intl.message(
      '1. Use of the App',
      name: 'conditionsTitle1',
      desc: '',
      args: [],
    );
  }

  /// `- The app is dedicated to showcasing and broadcasting programs, videos, and economic reports of the Economic Dialogue Company.\n- Misuse of the app is prohibited, including attempts of hacking, content manipulation, or using it for illegal purposes.\n- Users commit to using the app for personal and non-commercial purposes only, unless prior written permission is obtained from the company.`
  String get conditionsSubTitle1 {
    return Intl.message(
      '- The app is dedicated to showcasing and broadcasting programs, videos, and economic reports of the Economic Dialogue Company.\n- Misuse of the app is prohibited, including attempts of hacking, content manipulation, or using it for illegal purposes.\n- Users commit to using the app for personal and non-commercial purposes only, unless prior written permission is obtained from the company.',
      name: 'conditionsSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `2. Intellectual Property Rights`
  String get conditionsTitle2 {
    return Intl.message(
      '2. Intellectual Property Rights',
      name: 'conditionsTitle2',
      desc: '',
      args: [],
    );
  }

  /// `- All rights are reserved to the Economic Dialogue Company, including programs, videos, texts, designs, trademarks, and logos.\n- No content from the app may be copied, republished, distributed, or modified by any means without prior written consent from the company.\n- The company’s trademark or logo must not be used in any content or promotional material without official approval.`
  String get conditionsSubTitle2 {
    return Intl.message(
      '- All rights are reserved to the Economic Dialogue Company, including programs, videos, texts, designs, trademarks, and logos.\n- No content from the app may be copied, republished, distributed, or modified by any means without prior written consent from the company.\n- The company’s trademark or logo must not be used in any content or promotional material without official approval.',
      name: 'conditionsSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `3. Media Content Protection`
  String get conditionsTitle3 {
    return Intl.message(
      '3. Media Content Protection',
      name: 'conditionsTitle3',
      desc: '',
      args: [],
    );
  }

  /// `- The company reserves full rights to protect its programs and media content against any unauthorized copying or broadcasting.\n- Any attempt to use screen recording techniques or re-upload content is considered a direct violation of intellectual property rights.\n- The company reserves the right to take legal action against any party or individual violating its intellectual property rights.`
  String get conditionsSubTitle3 {
    return Intl.message(
      '- The company reserves full rights to protect its programs and media content against any unauthorized copying or broadcasting.\n- Any attempt to use screen recording techniques or re-upload content is considered a direct violation of intellectual property rights.\n- The company reserves the right to take legal action against any party or individual violating its intellectual property rights.',
      name: 'conditionsSubTitle3',
      desc: '',
      args: [],
    );
  }

  /// `4. Content and Information`
  String get conditionsTitle4 {
    return Intl.message(
      '4. Content and Information',
      name: 'conditionsTitle4',
      desc: '',
      args: [],
    );
  }

  /// `- The company strives to provide accurate and reliable content based on trusted sources.\n- The company bears no responsibility for any investment or business decisions made by the user based on the information provided in the app.\n- The available content is intended for informational and educational purposes only and does not constitute direct financial advice.`
  String get conditionsSubTitle4 {
    return Intl.message(
      '- The company strives to provide accurate and reliable content based on trusted sources.\n- The company bears no responsibility for any investment or business decisions made by the user based on the information provided in the app.\n- The available content is intended for informational and educational purposes only and does not constitute direct financial advice.',
      name: 'conditionsSubTitle4',
      desc: '',
      args: [],
    );
  }

  /// `5. Accounts and Subscriptions`
  String get conditionsTitle5 {
    return Intl.message(
      '5. Accounts and Subscriptions',
      name: 'conditionsTitle5',
      desc: '',
      args: [],
    );
  }

  /// `- The user must maintain the confidentiality of their login credentials and not share them with any third party.\n- The company reserves the right to suspend or delete any account that violates the terms or misuses the app.\n- In case of paid services or subscriptions, the user is required to settle fees within the specified deadlines.`
  String get conditionsSubTitle5 {
    return Intl.message(
      '- The user must maintain the confidentiality of their login credentials and not share them with any third party.\n- The company reserves the right to suspend or delete any account that violates the terms or misuses the app.\n- In case of paid services or subscriptions, the user is required to settle fees within the specified deadlines.',
      name: 'conditionsSubTitle5',
      desc: '',
      args: [],
    );
  }

  /// `6. Data Privacy`
  String get conditionsTitle6 {
    return Intl.message(
      '6. Data Privacy',
      name: 'conditionsTitle6',
      desc: '',
      args: [],
    );
  }

  /// `- The company is committed to protecting user data and not sharing it with any third party except in compliance with local laws or upon an official request from authorities.\n- Data is used to improve service quality and to send notifications about new content.\n- Users have the right to request modification or deletion of their personal data by contacting the app administration.`
  String get conditionsSubTitle6 {
    return Intl.message(
      '- The company is committed to protecting user data and not sharing it with any third party except in compliance with local laws or upon an official request from authorities.\n- Data is used to improve service quality and to send notifications about new content.\n- Users have the right to request modification or deletion of their personal data by contacting the app administration.',
      name: 'conditionsSubTitle6',
      desc: '',
      args: [],
    );
  }

  /// `7. Limitation of Liability`
  String get conditionsTitle7 {
    return Intl.message(
      '7. Limitation of Liability',
      name: 'conditionsTitle7',
      desc: '',
      args: [],
    );
  }

  /// `- The company is not liable for any direct or indirect damages that may result from using the app or relying on its content.\n- The company does not guarantee that the app will be error-free or free from technical interruptions at all times.\n- The user alone is responsible for decisions made based on the information or content provided.`
  String get conditionsSubTitle7 {
    return Intl.message(
      '- The company is not liable for any direct or indirect damages that may result from using the app or relying on its content.\n- The company does not guarantee that the app will be error-free or free from technical interruptions at all times.\n- The user alone is responsible for decisions made based on the information or content provided.',
      name: 'conditionsSubTitle7',
      desc: '',
      args: [],
    );
  }

  /// `8. Protection of Company Rights`
  String get conditionsTitle8 {
    return Intl.message(
      '8. Protection of Company Rights',
      name: 'conditionsTitle8',
      desc: '',
      args: [],
    );
  }

  /// `- The company reserves the full right to take any legal or technical action against any party that violates its intellectual or commercial rights.\n- The use of the company’s name or logo in any content that could harm its reputation or professional standing is prohibited.\n- All parties must respect the company’s reputation and legal status, subject to legal accountability.`
  String get conditionsSubTitle8 {
    return Intl.message(
      '- The company reserves the full right to take any legal or technical action against any party that violates its intellectual or commercial rights.\n- The use of the company’s name or logo in any content that could harm its reputation or professional standing is prohibited.\n- All parties must respect the company’s reputation and legal status, subject to legal accountability.',
      name: 'conditionsSubTitle8',
      desc: '',
      args: [],
    );
  }

  /// `9. Amendments to the Terms and Conditions`
  String get conditionsTitle9 {
    return Intl.message(
      '9. Amendments to the Terms and Conditions',
      name: 'conditionsTitle9',
      desc: '',
      args: [],
    );
  }

  /// `- The company reserves the right to amend or update these terms at any time, with users being notified of any significant changes.\n- Continued use of the app after publishing amendments constitutes implicit acceptance of the updated version.`
  String get conditionsSubTitle9 {
    return Intl.message(
      '- The company reserves the right to amend or update these terms at any time, with users being notified of any significant changes.\n- Continued use of the app after publishing amendments constitutes implicit acceptance of the updated version.',
      name: 'conditionsSubTitle9',
      desc: '',
      args: [],
    );
  }

  /// `10. Governing Law`
  String get conditionsTitle10 {
    return Intl.message(
      '10. Governing Law',
      name: 'conditionsTitle10',
      desc: '',
      args: [],
    );
  }

  /// `- These terms and conditions are governed by the laws of the Kingdom of Saudi Arabia.\n- Any disputes arising shall be addressed before the competent judicial authorities within the Kingdom.`
  String get conditionsSubTitle10 {
    return Intl.message(
      '- These terms and conditions are governed by the laws of the Kingdom of Saudi Arabia.\n- Any disputes arising shall be addressed before the competent judicial authorities within the Kingdom.',
      name: 'conditionsSubTitle10',
      desc: '',
      args: [],
    );
  }

  /// `🔒 Privacy Policy for Al Hiwar Al Iqtisadi Website and Application`
  String get privcyTitle0 {
    return Intl.message(
      '🔒 Privacy Policy for Al Hiwar Al Iqtisadi Website and Application',
      name: 'privcyTitle0',
      desc: '',
      args: [],
    );
  }

  /// `Al Hiwar Al Iqtisadi gives utmost importance to protecting the privacy of users of its website and application. This policy aims to clarify how personal data is collected, used, and protected in accordance with applicable laws.`
  String get privcySubTitle0 {
    return Intl.message(
      'Al Hiwar Al Iqtisadi gives utmost importance to protecting the privacy of users of its website and application. This policy aims to clarify how personal data is collected, used, and protected in accordance with applicable laws.',
      name: 'privcySubTitle0',
      desc: '',
      args: [],
    );
  }

  /// `1. Data Collected`
  String get privcyTitle1 {
    return Intl.message(
      '1. Data Collected',
      name: 'privcyTitle1',
      desc: '',
      args: [],
    );
  }

  /// `- We may collect personal data when registering or using the services, such as: name, email, phone number.\n- Technical data may be collected such as: device type, operating system, IP address, and usage history to improve performance.\n- Additional data may be collected when contacting customer service or participating in events or surveys.`
  String get privcySubTitle1 {
    return Intl.message(
      '- We may collect personal data when registering or using the services, such as: name, email, phone number.\n- Technical data may be collected such as: device type, operating system, IP address, and usage history to improve performance.\n- Additional data may be collected when contacting customer service or participating in events or surveys.',
      name: 'privcySubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `2. How Data is Used`
  String get privcyTitle2 {
    return Intl.message(
      '2. How Data is Used',
      name: 'privcyTitle2',
      desc: '',
      args: [],
    );
  }

  /// `- Data is used to provide and improve the services offered through the website and application.\n- Sending notifications or alerts related to new content or economic events.\n- Providing technical support and customer service.\n- Analyzing user behavior to improve user experience and develop content.`
  String get privcySubTitle2 {
    return Intl.message(
      '- Data is used to provide and improve the services offered through the website and application.\n- Sending notifications or alerts related to new content or economic events.\n- Providing technical support and customer service.\n- Analyzing user behavior to improve user experience and develop content.',
      name: 'privcySubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `3. Data Protection`
  String get privcyTitle3 {
    return Intl.message(
      '3. Data Protection',
      name: 'privcyTitle3',
      desc: '',
      args: [],
    );
  }

  /// `- The company is committed to using the latest technical and administrative means to protect users’ data from unauthorized access, modification, or disclosure.\n- Secure protocols (HTTPS) and encryption technologies are used to protect sensitive data.\n- The company is not responsible for any breach resulting from user negligence in maintaining the confidentiality of their data.`
  String get privcySubTitle3 {
    return Intl.message(
      '- The company is committed to using the latest technical and administrative means to protect users’ data from unauthorized access, modification, or disclosure.\n- Secure protocols (HTTPS) and encryption technologies are used to protect sensitive data.\n- The company is not responsible for any breach resulting from user negligence in maintaining the confidentiality of their data.',
      name: 'privcySubTitle3',
      desc: '',
      args: [],
    );
  }

  /// `4. Data Sharing with Third Parties`
  String get privcyTitle4 {
    return Intl.message(
      '4. Data Sharing with Third Parties',
      name: 'privcyTitle4',
      desc: '',
      args: [],
    );
  }

  /// `- The company does not sell or share user data with any third party for marketing purposes.\n- Data may only be shared in the following cases:\n– Compliance with local laws or an official request from competent authorities.\n- Protecting the company’s rights or property or ensuring users’ safety.\n- Engaging certified service providers to support technical operations (with full commitment to data protection).`
  String get privcySubTitle4 {
    return Intl.message(
      '- The company does not sell or share user data with any third party for marketing purposes.\n- Data may only be shared in the following cases:\n– Compliance with local laws or an official request from competent authorities.\n- Protecting the company’s rights or property or ensuring users’ safety.\n- Engaging certified service providers to support technical operations (with full commitment to data protection).',
      name: 'privcySubTitle4',
      desc: '',
      args: [],
    );
  }

  /// `5. User Rights`
  String get privcyTitle5 {
    return Intl.message(
      '5. User Rights',
      name: 'privcyTitle5',
      desc: '',
      args: [],
    );
  }

  /// `- The user has the right to request access to their personal data stored with us.\n- The user has the right to request modification or correction of their personal data at any time.\n- The user has the right to request deletion of their data or cancel their account by contacting the website/application administration.`
  String get privcySubTitle5 {
    return Intl.message(
      '- The user has the right to request access to their personal data stored with us.\n- The user has the right to request modification or correction of their personal data at any time.\n- The user has the right to request deletion of their data or cancel their account by contacting the website/application administration.',
      name: 'privcySubTitle5',
      desc: '',
      args: [],
    );
  }

  /// `6. Cookies`
  String get privcyTitle6 {
    return Intl.message('6. Cookies', name: 'privcyTitle6', desc: '', args: []);
  }

  /// `- The website and application may use cookies to enhance browsing experience and customize content.\n- Users can adjust their browser settings to block cookies, noting that this may affect some functions.`
  String get privcySubTitle6 {
    return Intl.message(
      '- The website and application may use cookies to enhance browsing experience and customize content.\n- Users can adjust their browser settings to block cookies, noting that this may affect some functions.',
      name: 'privcySubTitle6',
      desc: '',
      args: [],
    );
  }

  /// `7. Changes to the Privacy Policy`
  String get privcyTitle7 {
    return Intl.message(
      '7. Changes to the Privacy Policy',
      name: 'privcyTitle7',
      desc: '',
      args: [],
    );
  }

  /// `- The company reserves the right to modify or update the privacy policy from time to time.\n- Users will be notified of any significant changes through the website or application.\n- Continued use of the services after publishing the changes constitutes implicit acceptance of the updated version.`
  String get privcySubTitle7 {
    return Intl.message(
      '- The company reserves the right to modify or update the privacy policy from time to time.\n- Users will be notified of any significant changes through the website or application.\n- Continued use of the services after publishing the changes constitutes implicit acceptance of the updated version.',
      name: 'privcySubTitle7',
      desc: '',
      args: [],
    );
  }

  /// `8. Contact Us`
  String get privcyTitle8 {
    return Intl.message(
      '8. Contact Us',
      name: 'privcyTitle8',
      desc: '',
      args: [],
    );
  }

  /// `- For inquiries or requests related to privacy, users can contact the company’s management via email or the 'Contact Us' page.`
  String get privcySubTitle8 {
    return Intl.message(
      '- For inquiries or requests related to privacy, users can contact the company’s management via email or the \'Contact Us\' page.',
      name: 'privcySubTitle8',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
