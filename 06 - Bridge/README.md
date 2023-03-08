## Bridge Design Pattern
----
The Bridge design pattern is a structural pattern that decouples an abstraction from its implementation so that the two can vary independently. It is used when you want to separate an abstraction (e.g., an interface, a class, or a function) from its implementation, allowing them to vary independently.

Here are some of the pros and cons of using the Bridge design pattern:

### Pros:

- The Bridge design pattern promotes flexibility and scalability by allowing you to decouple the abstraction and implementation of a system.
- You can add new implementations without changing the abstraction, which reduces the amount of code you need to write.
- You can modify existing implementations without changing the abstraction, which minimizes the risk of introducing bugs.

### Cons:

- The Bridge design pattern can make the code more complex, especially if you need to introduce a large number of abstractions and implementations.
- The Bridge design pattern can increase the overhead of the system, as you need to create more classes and objects.
- The Bridge design pattern requires careful design, as you need to determine the best way to structure the abstractions and implementations to ensure that they work together correctl