import 'package:flutter/material.dart';
import 'package:odev/ui/view/hafta_2/pages/buttons_page.dart';
import 'package:odev/ui/view/hafta_2/pages/images_page.dart';
import 'package:odev/ui/view/hafta_2/pages/picker_page.dart';
import 'package:odev/ui/view/hafta_2/pages/progress_sliderBar_page.dart';
import 'package:odev/ui/view/hafta_2/pages/text_textField_page.dart';
import 'package:odev/ui/view/hafta_2/pages/web_view_page.dart';
import 'package:odev/ui/widgets/buttons/common_button.dart';

class Hafta2View extends StatelessWidget {
  const Hafta2View({super.key});

  @override
  Widget build(BuildContext context) {
    final _pageNames = [
      'Text & TextField',
      'Butonlar',
      'Progress Bar & Slider',
      'Webview',
      'Resimler',
      'Dropdown Button & Time Date Picker',
    ];
    final _pages = [
      TextTextFieldPage(),
      const ButtonsPage(),
      const ProgressSliderBarPage(),
      const WebViewPage(),
      const ImagesPage(),
      const PickerPage(),
    ];
    //CommonButton(page: _pages[0], pageName: _pageNames[0]);
    return Scaffold(
      body: Center(
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => Align(
                  alignment: Alignment.center,
                  child: CommonButton(
                    page: _pages[index],
                    pageName: _pageNames[index],
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: _pages.length),
      ),
    );
  }
}
