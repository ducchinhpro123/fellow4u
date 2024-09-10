import 'package:flutter/material.dart';
import 'package:onboarding/widgets/custom_button.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormPage();
  }
}

class _FormPage extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(left: 18),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('First Name'),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(right: 18),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Last Name'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(right: 18, left: 18),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Country',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(right: 18, left: 18),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(right: 18, left: 18),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 18),
            child: const Text(
              'Password has more than 6 letters',
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(right: 18, left: 18),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          RichText(
            text: TextSpan(
              text: 'By Signing Up, you agree to our ',
              style: DefaultTextStyle.of(context).style,
              children: const [
                TextSpan(
                    text: 'Terms & Conditions',
                    style: TextStyle(
                      color: Color(0xff00CEA6),
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          //const CustomButton(
          //  title: 'SIGN UP',
          //  marginLeft: 0,
          //  formKey: ,
          //)
        ],
      ),
    );
  }
}
