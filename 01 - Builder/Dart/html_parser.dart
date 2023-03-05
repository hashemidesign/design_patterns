void main() {
  HtmlBuilder builder = HtmlBuilder('ul');
  builder.addChild('li', 'Hello');
  builder.addChild('li', 'World');

  print(builder);
}

class HtmlElement {
  static int indentSize = 2;
  String name;
  String text;
  late List<HtmlElement> elements;

  HtmlElement(this.name, [this.text = '']) {
    elements = [];
  }

  String __str(int indent) {
    var lines = [];
    String i = ' ' * (indent * indentSize);
    lines.add("$i<$name>");

    if (text.isNotEmpty) {
      String i1 = ' ' * ((indent + 1) * indentSize);
      lines.add('$i1$text');
    }

    for (var e in elements) {
      lines.add(e.__str(indent + 1));
    }

    lines.add('$i</$name>');
    return lines.join('\n');
  }

  @override
  String toString() => __str(0);
}

class HtmlBuilder {
  String rootName;
  late HtmlElement _root;

  HtmlBuilder(this.rootName) {
    _root = HtmlElement(rootName);
  }

  void addChild(String childName, [String childText = ""]) {
    _root.elements.add(HtmlElement(childName, childText));
  }

  @override
  String toString() => _root.toString();
}
