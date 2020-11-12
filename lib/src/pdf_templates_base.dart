// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}

class Widget {
  Map<String, dynamic> build() {
    return {};
  }
}

class ContentWidget extends Widget {}

class TextStack extends ContentWidget {
  static const _name = 'text';
  final List<Text> children;

  TextStack({this.children});

  @override
  Map<String, dynamic> build() {
    Map<String, dynamic> element = {};
    element[_name] = children.map((elm) => elm.build()).toList();
    return element;
  }
}

class RowStack extends ContentWidget {
  static const _name = 'columns';
  final List<Row> children;

  RowStack({this.children});

  @override
  Map<String, dynamic> build() {
    Map<String, dynamic> element = {};
    element[_name] = [children.map((elm) => elm.build()).toList()];
    return element;
  }
}

class Text extends ContentWidget {
  static const _name = 'text';
  final String text;

  Text(this.text);

  @override
  Map<String, dynamic> build() {
    Map<String, dynamic> element = {};
    element[_name] = text;
    return element;
  }
}

class RowItem extends Widget {
  final ContentWidget child;
  final dynamic width;

  RowItem({this.child, this.width = '*'});

  @override
  Map<String, dynamic> build() {
    Map<String, dynamic> element = {'width': width};
    child.build().entries.forEach((i) {
      element[i.key] = i.value;
    });
    return element;
  }
}

class Row extends ContentWidget {
  static const _name = 'columns';
  final List<RowItem> children;
  final double gap;

  Row({this.children, this.gap = 0.0});

  @override
  Map<String, dynamic> build() {
    Map<String, dynamic> element = {};
    element[_name] = children.map((RowItem item) => item.build()).toList();
    if (gap != 0.0) {
      element['gap'] = gap;
    }
    return element;
  }
}
