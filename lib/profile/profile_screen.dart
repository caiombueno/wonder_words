import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isLogged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLogged
          ? _SignedInBody(
              onSignOutButtonTap: () {
                setState(() {
                  _isLogged = false;
                });
              },
            )
          : _SignedOutBody(
              onSignInButtonTap: () {
                setState(() {
                  _isLogged = true;
                });
              },
            ),
    );
  }
}

class _SignedInBody extends StatelessWidget {
  const _SignedInBody({
    this.onSignOutButtonTap,
    Key? key,
  }) : super(key: key);

  final void Function()? onSignOutButtonTap;

  static const String _username = 'edsonbueno';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 149.0,
        ),
        const Center(
          child: Text(
            'Hi, $_username!',
            style: TextStyle(
              fontSize: 38.0,
            ),
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
        _SignOutButton(
          onTap: onSignOutButtonTap,
        ),
      ],
    );
  }
}

class _SignedOutBody extends StatelessWidget {
  const _SignedOutBody({
    this.onSignInButtonTap,
    Key? key,
  }) : super(key: key);
  final void Function()? onSignInButtonTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100.0,
        ),
        _SignInButton(
          onTap: onSignInButtonTap,
        ),
        const _SignUpButton(),
        const SizedBox(
          height: 50.0,
        ),
        const _DarkModePreferences(),
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
    this.onTap,
    Key? key,
  }) : super(key: key);
  final void Function()? onTap;

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
          onPressed: onTap,
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
              Text(
                'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SignOutButton extends StatelessWidget {
  const _SignOutButton({
    this.onTap,
    Key? key,
  }) : super(key: key);
  final void Function()? onTap;

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
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.black,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
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
        ),
      ),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({
    this.onTap,
    Key? key,
  }) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            'Don\'t have an account?',
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Sign up',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
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
  int _listTileGroupValue = 1;

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
          groupValue: _listTileGroupValue,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                _listTileGroupValue = value;
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
          groupValue: _listTileGroupValue,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                _listTileGroupValue = value;
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
          groupValue: _listTileGroupValue,
          activeColor: Colors.black,
          onChanged: (int? value) {
            if (value != null) {
              setState(() {
                _listTileGroupValue = value;
              });
            }
          },
        ),
      ],
    );
  }
}
