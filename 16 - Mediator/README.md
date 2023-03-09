## Mediator Design Pattern
----
The Mediator design pattern is a behavioral pattern that promotes loose coupling between objects by encapsulating their communication within a mediator object. The mediator object acts as a centralized communication hub that facilitates interactions between objects, allowing them to communicate without having direct references to each other.

### Pros:
- Promotes loose coupling between objects: Objects don't need to have direct references to each other to communicate, reducing the amount of coupling and increasing modularity.
- Simplifies object interactions: The mediator object encapsulates the communication logic between objects, making it easier to add, remove, or modify interactions without affecting the objects themselves.
- Centralizes control: The mediator object provides a single point of control for communication between objects, making it easier to manage complex interactions.

### Cons:
- Can introduce performance overhead: Since all communication goes through the mediator object, there may be a performance hit if the mediator becomes a bottleneck or if there are many objects communicating with each other.
- Can introduce complexity: If not designed properly, the mediator object can become complex and difficult to understand, making it harder to maintain.

### When to use the Mediator design pattern:
- When you have a set of objects that need to communicate with each other, but you want to reduce coupling between them.
- When you have a complex set of interactions between objects that would be difficult to manage without a centralized communication hub.
- When you want to add, remove, or modify interactions between objects without affecting the objects themselves.

Overall, the Mediator design pattern can be a useful tool for managing complex interactions between objects and reducing coupling, but it should be used judiciously and with care to avoid introducing unnecessary complexity or performance overhead.