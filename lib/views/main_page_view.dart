import 'package:flutter/material.dart';
import 'package:protobrain/global.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({
    Key? key,
    required this.pageState,
  }) : super(key: key);

  final PageState pageState;

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  late String _appBarTitle;
  late PageState _pageState;
  @override
  void initState() {
    super.initState();
    _pageState = widget.pageState;
    _appBarTitle = Global.boxesList[_pageState.index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("当前身份：自己"),
                  Text("完成度：0/100%"),
                ],
              ),
            ),
            for (var index = 0; index < PageState.values.length; index++)
              index != _pageState.index
                  ? ListTile(
                      title: Text(Global.boxesList[index]),
                      onTap: () => setState(
                        () {
                          _pageState = PageState.values[index];
                          _appBarTitle = Global.boxesList[index];
                        },
                      ),
                      selected: index == _pageState.index,
                    )
                  : Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Theme.of(context).focusColor,
                      ),
                      child: ListTile(
                        title: Text(Global.boxesList[index]),
                        onTap: () => setState(
                          () {
                            _pageState = PageState.values[index];
                            _appBarTitle = Global.boxesList[index];
                          },
                        ),
                        selected: index == _pageState.index,
                      ),
                    ),
          ],
        ),
      ),
      body: const Center(),
    );
  }
}
