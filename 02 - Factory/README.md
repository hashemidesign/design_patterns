## Factory Design Pattern
-----
The Factory Design Pattern is a creational pattern that provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created. The Factory pattern is used when the client code needs to create objects but does not need to know about the actual creation process, which allows for loose coupling between the client and the objects that are created.

In the Factory Design Pattern, a Factory class is responsible for creating objects of different types based on input parameters or some other logic. The Factory class returns an interface or a base class, so that the client code can use the objects without knowing the specific implementation details. This allows for easy maintenance and extension of the code in the future, as new object types can be added to the system by creating new classes that implement the interface or extend the base class.

#### Differences between factory and builder
Factory and Builder are creational design patterns used to create objects in a different way.

The main difference between the two patterns is in the way they create objects. The Factory pattern is used when you have a single method or a single class that is responsible for creating an object. It provides a way to *create objects without exposing the creation logic to the client*.

On the other hand, the Builder pattern is used when you have a complex object that needs to be created step-by-step. It separates the construction of a complex object from its representation, allowing the same construction process to create different representations.

In summary, the main differences between the Factory and Builder patterns are:

- Factory creates objects in a single step, whereas Builder creates objects in multiple steps.
- Factory is used to create objects with default or simple behavior, whereas Builder is used to create complex objects with many configuration options.
- Factory provides a simple interface to create objects, whereas Builder provides more control over the creation process.