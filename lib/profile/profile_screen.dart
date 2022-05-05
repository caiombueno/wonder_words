import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final bool _isLogged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _isLogged ? const _LoggedBody() : const _NotLoggedBody());
  }
}

class _LoggedBody extends StatelessWidget {
  const _LoggedBody({Key? key}) : super(key: key);

  final String username = 'edsonbueno';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 149.0),
        Center(
          child: Text(
            'Hi, $username!',
            style: const TextStyle(fontSize: 38.0),
          ),
        ),
        const SizedBox(
          height: 85,
        ),
        const _UpdateProfileListTile(),
        const SizedBox(
          height: 35,
        ),
        const _DarkModePreferences(),
        const SizedBox(
          height: 240,
        ),
        const _SignOutButton(),
      ],
    );
  }
}

class _NotLoggedBody extends StatelessWidget {
  const _NotLoggedBody({Key? key}) : super(key: key);
  final int? val = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        SizedBox(height: 100.0),
        _SignInButton(),
        _DontHaveAccountOption(),
        SizedBox(
          height: 50.0,
        ),
        _DarkModePreferences(),
      ],
    );
  }
}

class _UpdateProfileListTile extends StatelessWidget {
  const _UpdateProfileListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Divider(),
        ListTile(
          leading: Text(
            'Update Profile',
            style: TextStyle(fontSize: 18),
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
  const _DarkModePreferences({
    Key? key,
  }) : super(key: key);

  @override
  State<_DarkModePreferences> createState() => _DarkModePreferencesState();
}

class _DarkModePreferencesState extends State<_DarkModePreferences> {
  int val = 1;

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
        const SizedBox(height: 20.0),
        RadioListTile<int>(
          title: const Text('Always Dark'),
          value: 1,
          groupValue: val,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                val = value;
              });
            }
          },
        ),
        const Divider(
          height: 1,
        ),
        RadioListTile<int?>(
          title: const Text('Always Light'),
          value: 2,
          groupValue: val,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                val = value;
              });
            }
          },
        ),
        const Divider(
          height: 1,
        ),
        RadioListTile<int?>(
          title: const Text('Use System Settings'),
          value: 3,
          groupValue: val,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                val = value;
              });
            }
          },
        ),
      ],
    );
  }
}
