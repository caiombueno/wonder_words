import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static const bool _isLogged = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _isLogged ? _SignedInBody() : _SignedOutBody(),
    );
  }
}

class _SignedInBody extends StatelessWidget {
  const _SignedInBody({
    Key? key,
  }) : super(key: key);

  static const String _username = 'edsonbueno';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(
          height: 149.0,
        ),
        Center(
          child: Text(
            'Hi, $_username!',
            style: TextStyle(
              fontSize: 38.0,
            ),
          ),
        ),
        SizedBox(
          height: 85,
        ),
        _UpdateProfileListTile(),
        SizedBox(
          height: 35,
        ),
        _DarkModePreferences(),
        SizedBox(
          height: 240,
        ),
        _SignOutButton(),
      ],
    );
  }
}

class _SignedOutBody extends StatelessWidget {
  const _SignedOutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(
          height: 100.0,
        ),
        _SignInButton(),
        _SignUpButton(),
        SizedBox(
          height: 50.0,
        ),
        _DarkModePreferences(),
      ],
    );
  }
}

class _UpdateProfileListTile extends StatelessWidget {
  const _UpdateProfileListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Divider(),
        ListTile(
          leading: Text(
            'Update Profile',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ),
        Divider(
          height: 0,
        ),
      ],
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton({
    Key? key,
  }) : super(key: key);

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

class _SignOutButton extends StatelessWidget {
  const _SignOutButton({Key? key}) : super(key: key);

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
              Text('Sign Out'),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({Key? key}) : super(key: key);

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
  const _DarkModePreferences({
    Key? key,
  }) : super(key: key);

  @override
  State<_DarkModePreferences> createState() => _DarkModePreferencesState();
}

class _DarkModePreferencesState extends State<_DarkModePreferences> {
  int listTielGroupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Dark Mode Preferences',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        RadioListTile<int>(
          title: const Text('Always Dark'),
          value: 1,
          groupValue: listTielGroupValue,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                listTielGroupValue = value;
              });
            }
          },
        ),
        const Divider(
          height: 1,
        ),
        RadioListTile<int?>(
          title: const Text(
            'Always Light',
          ),
          value: 2,
          groupValue: listTielGroupValue,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                listTielGroupValue = value;
              });
            }
          },
        ),
        const Divider(
          height: 1,
        ),
        RadioListTile<int?>(
          title: const Text(
            'Use System Settings',
          ),
          value: 3,
          groupValue: listTielGroupValue,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                listTielGroupValue = value;
              });
            }
          },
        ),
      ],
    );
  }
}
