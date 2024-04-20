import 'package:flutter/material.dart';
import 'package:kitchenwise/constants.dart';
import 'package:kitchenwise/u.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: AppConstants.sidePadding,
                  vertical: AppConstants.topPadding),
              child: Column(
                children: [
                  Text(
                    'Welcome Victor!', 
                    style: AppFonts.quicksand(size: 20),
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Shopping List',
                          style: AppFonts.quicksand(size: 18,weight: FontWeight.w700),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'About',
                          style: AppFonts.quicksand(size: 18,weight: FontWeight.w700 ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Settings',
                           style: AppFonts.quicksand(size: 18,weight: FontWeight.w700),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Log out',
                           style: AppFonts.quicksand(size: 18,weight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ))
                ],
              ))),
    );
  }
}
