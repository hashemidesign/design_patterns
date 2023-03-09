## Chain of Responsibility Design Pattern
----
The Chain of Responsibility is a design pattern used in software development that allows a request to be passed through a chain of objects until it is handled by one of the objects. Each object in the chain has the ability to either handle the request or pass it on to the next object in the chain.

The basic idea behind the pattern is to decouple the sender of a request from its receiver by giving more than one object a chance to handle the request. This way, the request can be processed by multiple objects without the sender having to know which object actually handled the request.

### Pros:
- It provides a flexible way to add new handlers to a system without modifying the existing code.
- It can simplify the code by breaking up a large monolithic function into smaller, more manageable functions.
- It provides a way to dynamically change the sequence of request processing by adding or removing handlers at runtime.

### Cons:
- It can make the code more complex if the chain becomes too long or if there are too many handlers.
- It can be difficult to debug since it's not always clear which handler will handle a particular request.
- It can lead to performance issues if the chain is too long and each object takes a lot of time to process the request.

### When to use Chain of Responsibility pattern:
- When you want to allow multiple objects to handle a request without the sender knowing which object will handle it.
- When you want to add new handlers to a system without modifying the existing code.
- When you want to simplify the code by breaking up a large function into smaller, more manageable functions.