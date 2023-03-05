void main() {
  Director director = Director();
  ConcreteBuilder1 builder = ConcreteBuilder1();
  director.builder = builder;

  print("Standard basic product: ");
  director.buildMinimalViableProduct();
  builder.product.listParts();
  builder.reset();

  print("\n");

  print("Standard full featured product: ");
  director.buildFullFeaturedProduct();
  builder.product.listParts();
  builder.reset();

  print("\n");

  // Remember, the Builder pattern can be used without a Director class.
  print("Custom product: ");
  builder.productPartA();
  builder.productPartB();
  builder.productPartC();
  builder.product.listParts();
  builder.reset();
}

abstract class Builder {
  Product1? product;
  productPartA();
  productPartB();
  productPartC();
}

class ConcreteBuilder1 extends Builder {
  late Product1 _product;

  ConcreteBuilder1() {
    reset();
  }

  @override
  Product1 get product => _product;

  @override
  productPartA() {
    _product.add("PartA1");
  }

  @override
  productPartB() {
    _product.add("PartB1");
  }

  @override
  productPartC() {
    _product.add("PartC1");
  }

  void reset() {
    _product = Product1();
  }
}

class Product1 {
  late List parts;

  Product1() : parts = [];

  void add(dynamic p) => parts.add(p);

  void listParts() => print("Product parts: ${parts.join(', ')}");
}

class Director {
  late Builder _builder;

  set builder(Builder b) {
    _builder = b;
  }

  Builder get builder => _builder;

  void buildMinimalViableProduct() => builder.productPartA();

  void buildFullFeaturedProduct() {
    _builder.productPartA();
    _builder.productPartB();
    _builder.productPartC();
  }
}
