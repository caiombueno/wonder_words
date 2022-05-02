import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int? val = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 100.0,
          ),
          const _SignInButton(),
          const _DontHaveAccountOption(),
          const SizedBox(
            height: 50.0,
          ),
          _DarkModePreferences(val: val),
        ],
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: SizedBox(
        width: 400.0,
        height: 48.0,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                width: 140.0,
              ),
              Icon(Icons.login),
              SizedBox(
                width: 8.0,
              ),
              Text('Sign In'),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class _DontHaveAccountOption extends StatelessWidget {
  const _DontHaveAccountOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          const Text('Don\'t have an account?'),
          TextButton(
            child: const Text(
              'Sign up',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

class _DarkModePreferences extends StatefulWidget {
  _DarkModePreferences({Key? key, this.val}) : super(key: key);
  int? val;

  @override
  State<_DarkModePreferences> createState() => _DarkModePreferencesState();
}

class _DarkModePreferencesState extends State<_DarkModePreferences> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          'Dark Mode Preferences',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20.0),
        RadioListTile<int?>(
          title: const Text('Always Dark'),
          value: 1,
          groupValue: widget.val,
          activeColor: Colors.black,
          onChanged: (int? value) {
            setState(() {
              widget.val = value;
            });
          },
        ),
        const Divider(
          height: 1,
        ),
        RadioListTile<int?>(
          title: const Text('Always Light'),
          value: 2,
          groupValue: widget.val,
          activeColor: Colors.black,
          onChanged: (int? value) {
            setState(() {
              widget.val = value;
            });
          },
        ),
        const Divider(
          height: 1,
        ),
        RadioListTile<int?>(
          title: const Text('Use System Settings'),
          value: 3,
          groupValue: widget.val,
          activeColor: Colors.black,
          onChanged: (int? value) {
            setState(() {
              widget.val = value;
            });
          },
        ),
      ],
    );
  }
}
