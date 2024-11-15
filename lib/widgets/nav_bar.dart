import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import 'button_rectangle.dart';
import 'button_text.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:universal_html/html.dart' as html;

import 'download_button.dart';

class NavBar {
  // Function to download the CV


  void downloadCV() async {
    final ByteData bytes = await rootBundle.load('assets/cv/Suhail.pdf');
    final Uint8List list = bytes.buffer.asUint8List();
    final blob = html.Blob([list], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'sample.pdf')
      ..click();
    html.Url.revokeObjectUrl(url);
  }


  Widget desktopNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTextLarge(
          text: DataValues.navBarAboutMe,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.aboutKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarAboutMe} section',
        ),
        const SizedBox(width: 20.0),

        ButtonTextLarge(
          text: DataValues.navBarExperience,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.experienceKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarExperience} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarProjects,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.projectKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarProjects} section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: DataValues.navBarContactMe,
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.contactKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to ${DataValues.navBarContactMe} section',
        ),
        const SizedBox(width: 20.0),
        CVRectangle(
          name: 'Download CV',
          onPressed: downloadCV,
          color: AppThemeData.buttonPrimary,
          message: 'Download CV',
        ),
      ],
    );
  }

  Widget mobileNavBar() {
    Widget miniHeader() {
      return Column(
        children: [
          Image.asset('assets/images/logo.png', height: 80.0, width: 80.0),
          const SizedBox(height: 10.0),
          SelectableText(
            DataValues.headerName,
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: AppThemeData.darkTheme.textTheme.titleLarge?.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.labelLarge,
          ),
        ],
      );
    }

    return Drawer(
      backgroundColor: AppThemeData.backgroundBlack,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 60.0),
          miniHeader(),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarAboutMe,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.aboutKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarAboutMe} section',
          ),
          const SizedBox(height: 20.0),

          ButtonTextLarge(
            text: DataValues.navBarExperience,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.experienceKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarExperience} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarProjects,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.projectKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarProjects} section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: DataValues.navBarContactMe,
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.contactKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to ${DataValues.navBarContactMe} section',
          ),
          const SizedBox(height: 20.0),
          CVRectangle(
            name: 'Download CV',
            onPressed: downloadCV,
            color: AppThemeData.buttonPrimary,
            message: 'Download CV',
          ),
        ],
      ),
    );
  }
}
