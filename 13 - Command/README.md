## Command Design Pattern
-----
The Command pattern is a design pattern used in software development that encapsulates a request as an object, allowing it to be parameterized with different requests, queued, and logged with the ability to undo or redo the request.

The basic idea behind the pattern is to decouple the object that invokes the operation from the one that knows how to perform it. This allows for greater flexibility in the design of the system, as it is easier to add new commands without modifying existing code.

### Pros:
- It provides a way to separate the responsibility of issuing commands from the responsibility of executing them.
- It allows for the creation of complex command structures that can be easily modified and extended.
- It provides an easy way to implement undo and redo functionality.

### Cons:
- It can lead to an increase in the number of classes in the system, which can make it more difficult to understand and maintain.
- It can lead to an increase in the complexity of the code, which can make it more difficult to debug.

### When to use Command pattern:
- When you want to decouple the object that issues a request from the object that performs it.
- When you want to implement undo and redo functionality.
- When you want to create a queue of commands to be executed later.
- When you want to create a transactional system, where a group of commands are executed as a single unit.