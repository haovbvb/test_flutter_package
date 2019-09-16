import 'package:flutter/material.dart';
import 'package:flutter_xebaseui/flutter_xebaseui.dart';

class DemoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = "Demo list";
    final listData = ["Toast 弹窗", "加载动画", "下拉刷新"];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
        itemCount: listData.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(listData[index]),
            onTap: () => _click(index),
          );
        },
        separatorBuilder: (BuildContext context, int index) => new Divider(),
      ),
    );
  }

  void _click(int index) {
    debugPrint('$index');

    switch (index) {
      case 0:
        _testToast();
        break;
      case 1:
        debugPrint("加载");
        break;
      case 2:
        debugPrint("上啦");
        break;
    }
  }

  void _testToast() {
    XMToast.showToast("弹窗 toast");
  }

}