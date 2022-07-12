import 'package:cupertino_lists/cupertino_lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class healthRecord extends StatelessWidget {
  const healthRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: const Text('Medical History'),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text(''),
              onPressed: () {},
            ),
            backgroundColor: CupertinoColors.systemGroupedBackground,
            border: null,
            stretch: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <CupertinoListSection>[
                CupertinoListSection.insetGrouped(
                  header: const Text('Medical Record'),
                  children: <CupertinoListTile>[
                    CupertinoListTile.notched(
                      title: const Text('Medicine List'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.list_bullet,
                      ),
                      additionalInfo: const Text('4'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) =>
                              const _SecondPage(),
                        ),
                      ),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Health Notes'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemYellow,
                        icon: CupertinoIcons.list_bullet,
                      ),
                      additionalInfo: const Text('42'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) =>
                              const _SecondPage(),
                        ),
                      ),
                    ),
                    CupertinoListTile.notched(
                      title: const Text('Medicine'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemRed,
                        icon: CupertinoIcons.list_bullet,
                      ),
                      additionalInfo: const Text('2'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) =>
                              const _SecondPage(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        previousPageTitle: 'Lists',
      ),
      child: Container(
        color: Colors.white,
      ),
    );
  }
}

class _DummyIcon extends StatelessWidget {
  const _DummyIcon({Key? key, required this.color, required this.icon})
      : super(key: key);

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Icon(
          icon,
          color: CupertinoColors.white,
          size: 18.0,
        ),
      ),
    );
  }
}
