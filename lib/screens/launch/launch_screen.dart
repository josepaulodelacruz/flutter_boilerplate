import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/size_config.dart';
import 'package:flutter_boilerplate/widgets/widgets_exports.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: SizeConfig.blockSizeHorizontal! * 50,
                  ),
                  Text(
                    'Flutter Boilerplate',
                    style: TextStyle(
                      height: 2,
                      fontSize: SizeConfig.blockSizeHorizontal! * 7,
                    )
                  ),
                ],
              )
            ),
          ),
          Flexible(
            flex: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButtonWidget(btnLabel: 'Login'),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButtonWidget(btnLabel: 'Register'),
                  ),
                ],
              )
            ),
          )
        ],
      )
    );
  }

  Widget _buildHeroSection() {
    return SizedBox();
  }
}
