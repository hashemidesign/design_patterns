## Decorator Design Pattern
----
The Decorator design pattern is a structural design pattern that allows behavior to be added dynamically to an object at runtime, without changing the class of the object itself. This pattern is useful when you want to add functionality to an object in a flexible and modular way, without having to create a large number of subclasses or modify the original class.

In the Decorator pattern, a decorator class implements the same interface as the object it decorates, and contains an instance of the object it is decorating. The decorator adds its own behavior before or after delegating to the object it decorates.

Here are some pros and cons of using the Decorator pattern:

### Pros:
- Allows for flexible and dynamic behavior modification at runtime
- Follows the Open-Closed Principle, which states that classes should be open for extension but closed for modification
- Can be used to add behavior without creating a large number of subclasses

### Cons:
- Can result in a large number of small objects that can be difficult to manage
- Can be confusing if the decorator classes are not named and organized clearly
- Can be more complex than other patterns if not used judiciously

The Decorator pattern can be used in many situations, such as:
- Adding additional features or behaviors to an existing class without modifying it
- Adding functionality to a class in a way that can be easily removed or modified
- Creating a series of small, reusable objects that can be combined to produce a variety of behaviors

Overall, the Decorator pattern is a powerful tool for adding behavior to objects in a flexible and modular way, but should be used carefully to avoid adding unnecessary complexity to a program.