import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_boilerplate/src/utils/size_config.dart';
import 'package:flutter_boilerplate/src/widgets/export_widgets.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 3,
              child: SizedBox(
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
              child: Hero(
                tag: 'login',
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    )
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: PrimaryButtonWidget(
                          onPressed: () => _navigateEvent(GoRouter.of(context), path: '/login'),
                          btnLabel: 'LOGIN'
                        ),
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(
                        width: double.infinity,
                        child: PrimaryButtonWidget(btnLabel: 'REGISTER'),
                      ),
                    ],
                  )
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  void _navigateEvent(GoRouter context, {required String path}) {
    context.push(path);
  }

}
