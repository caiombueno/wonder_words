import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(26, 208, 208, 208),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            _SearchBar(),
            _ChipFilters(),
            SizedBox(
              height: 8,
            ),
            _QuotesCard(
              content:
                  'Identity theft is not a joke, Jim! Millions of families suffer every year.',
              author: 'Dwight Schrute',
            ),
            _QuotesCard(
              content:
                  'Would I rather be feared or loved? Easy. Both. I want people to be afraid of how much they love me.',
              author: 'Michael Scott',
            ),
            _QuotesCard(
              content: 'The worst thing about prison was the dementors.',
              author: 'Dwight Schrute',
            ),
            _QuotesCard(
              content:
                  'I just want to lie on the beach and eat hot dogs. That\'s all I\'ve ever wanted.',
              author: 'Kevin Malone',
            ),
            _QuotesCard(
              content:
                  'I just want to lie on the beach and eat hot dogs. That\'s all I\'ve ever wanted.',
              author: 'Kevin Malone',
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 65,
        left: 15,
        right: 15,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Search',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.search,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class _ChipFilters extends StatelessWidget {
  const _ChipFilters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SizedBox(
            width: 15,
          ),
          _QuotesChip(
            title: 'Favorites',
            avatar: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          _QuotesChip(
            title: 'Life',
          ),
          SizedBox(
            width: 10,
          ),
          _QuotesChip(
            title: 'Happiness',
          ),
          SizedBox(
            width: 10,
          ),
          _QuotesChip(
            title: 'Work',
          ),
          SizedBox(
            width: 10,
          ),
          _QuotesChip(
            title: 'Nature',
          ),
          SizedBox(
            width: 10,
          ),
          _QuotesChip(
            title: 'Science',
          ),
          SizedBox(
            width: 10,
          ),
          _QuotesChip(
            title: 'Love',
          ),
          SizedBox(
            width: 10,
          ),
          _QuotesChip(
            title: 'Funny',
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

class _QuotesChip extends StatelessWidget {
  const _QuotesChip({
    required this.title,
    this.avatar,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget? avatar;

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: const BorderSide(),
      label: Text(
        title,
      ),
      backgroundColor: Colors.white,
      avatar: avatar,
    );
  }
}

class _QuotesCard extends StatelessWidget {
  const _QuotesCard({
    required this.content,
    required this.author,
    Key? key,
  }) : super(key: key);
  final String content;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 9,
        left: 9,
        bottom: 9,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.format_quote_rounded,
                  ),
                  Icon(
                    CupertinoIcons.heart,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  content,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const Icon(
                Icons.format_quote_rounded,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  author,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
