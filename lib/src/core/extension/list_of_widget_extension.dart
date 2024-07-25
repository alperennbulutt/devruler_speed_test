import 'package:flutter/material.dart';

extension ListOfWidgetExtension on List<Widget> {
  Row get row => Row(children: this);
  Column get column => Column(children: this);
  Wrap get wrap => Wrap(children: this);
  ListView get listView => ListView(children: this);
}
