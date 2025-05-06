import 'package:ecommerceapp/constants/colors.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:ecommerceapp/constants/text_strings.dart';
import 'package:ecommerceapp/helpers/helper_functions.dart';
import 'package:ecommerceapp/router/routing_constant.dart';
import 'package:ecommerceapp/shared_preference/pref_key.dart';
import 'package:ecommerceapp/shared_preference/shared_pref.dart';
import 'package:ecommerceapp/theme/custom_snackbar.dart';
import 'package:ecommerceapp/theme/progress_dialog.dart';
import 'package:flutter/material.dart';

import '../home_page/home_screen.dart';
import '../signup/signup.dart';

class LoginState extends StatefulWidget {
  LoginState({super.key});

  @override
  State<LoginState> createState() => _LoginStateState();
}

class _LoginStateState extends State<LoginState> {
  TextEditingController mailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isObscureTextVisible = false;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(children: [
        /// Logo, Title & Sub-Title
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image(
            height: 150,
            image: AssetImage(dark
                ? "asset/logo/darkmode_logo.png"
                : "asset/logo/lightmode_logo.png"),
          ),
          Text(
            "Login",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            KTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_circle_rounded),
                labelText: "Email",
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              obscureText: isObscureTextVisible,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(isObscureTextVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isObscureTextVisible = !isObscureTextVisible;
                      });
                    },
                  ),
                  labelText: "Password"),
            ),
            const SizedBox(
              height: 32,
            ),

            //Remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(
                      "Remember Me",
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      showSnackBarYellow(context,
                          "This feature is still under development.\nPlease try after some time");
                    },
                    child: const Text("Forgot Password ?")),
              ],
            ),
            //Forgot Password

            const SizedBox(
              height: 32,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      ProgressDialog.show(context);
                      SharedPref.setBool(PrefKey.isLogin, true);
                      Future.delayed(const Duration(milliseconds: 60), () {
                        Navigator.of(context).pop(); //Pop Dialog

                        Navigator.of(context).pushNamedAndRemoveUntil(
                            homeScreenRoute, (Route<dynamic> route) => false);
                      });
                    },
                    child: const Text(KTexts.signIn))),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(signupScreenRoute);
                },
                child: const Text(KTexts.createAccount),
              ),
            )
          ],
        )),

        //Divider
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            ),
            Text(
              KTexts.orSignInWith,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            ),
          ],
        ),
        const SizedBox(
          height: KSizes.spaceBtwSections,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: TColors.grey,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                  height: KSizes.iconMd,
                  width: KSizes.iconMd,
                  image: AssetImage("asset/logo/google-icon.png"),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: TColors.grey,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                  height: KSizes.iconMd,
                  width: KSizes.iconMd,
                  image: AssetImage("asset/logo/facebook-icon.png"),
                ),
              ),
            )
          ],
        ),
      ]),
    )));
  }
}
