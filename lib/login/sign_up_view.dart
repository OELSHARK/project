import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_step_by_step/color_extention.dart';

import '../common_widget/round_button.dart';
import '../common_widget/round_textfield.dart';

class SignUPView extends StatefulWidget {
  const SignUPView({super.key});

  @override
  State<StatefulWidget> createState() => _SignUPViewState();
}
class _SignUPViewState extends State<SignUPView>{
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtCode = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isStay = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: TColor.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              RoundTextField(
                controller: txtFirstName,
                hintText: "First & Last Name",
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                controller: txtEmail,
                hintText: "Email Address",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                controller: txtMobile,
                hintText: "Mobile Phone",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                controller: txtCode,
                hintText: "Group Special Code (optional)",
              ),
              const SizedBox(
                height: 15,
              ),
              RoundTextField(
                controller: txtPassword,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isStay = !isStay;
                      });
                    },
                    icon: Icon(
                      isStay ? Icons.check_box : Icons.check_box_outline_blank,
                      color: isStay
                          ? TColor.primary
                          : TColor.subTitle.withOpacity(0.3),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Please sign me up for the monthly newsletter.",
                      style: TextStyle(
                        color: TColor.subTitle.withOpacity(0.3),
                        fontSize: 13,
                      ),
                    ),
                  ),


                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RoundLineButton(
                title: "Sign Un",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
