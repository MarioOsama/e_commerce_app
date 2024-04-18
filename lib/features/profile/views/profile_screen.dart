import 'package:e_commerce_app/core/utils/strings/app_strings.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 10, left: 10),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundColor: Colors.black,
            ),
            const SizedBox(
              height: 50,
            ),
            const ListTile(
              title: Text(
                AppStrings.personalInformation,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              trailing: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
            ),
            const ListTile(
              title: Text(
                AppStrings.lang,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: Icon(
                  Icons.language,
                  color: Colors.white,
                ),
              ),
              trailing: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
            ),
            ListTile(
                title: const Text(
                  AppStrings.mode,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                leading: const CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 20,
                  child: Icon(
                    Icons.dark_mode,
                    color: Colors.white,
                  ),
                ),
                trailing: Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.black,
                    value: true,
                    onChanged: (value) {})),
            const ListTile(
              title: Text(
                AppStrings.logOut,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
              ),
              trailing: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
            ),
            const Expanded(child: SizedBox()),
            Text(
              '2024 ©️',
              style: TextStyle(
                  color: AppColors.gray700,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Codium team',
              style: TextStyle(
                  color: AppColors.gray700,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
