## Proxy Design Pattern
-----
The Proxy Design Pattern is a structural design pattern that provides a surrogate or placeholder for an object to control access to it. In other words, the Proxy acts as a stand-in for the real object, intercepting requests and performing some additional functionality before passing the request along to the real object.

A typical use case for the Proxy Pattern is when you need to control access to an expensive or resource-intensive object. By using a Proxy, you can delay the creation of the real object until it's actually needed, and also perform additional functionality like caching or access control.

### Pros:
- Improved performance by deferring object creation until needed.
- Improved security and access control by having a separate object handle authentication and authorization.
- Simplified interface by allowing the Proxy to handle the implementation details of the real object.

### Cons:
- Increased complexity due to the additional layers of indirection.
- Reduced transparency since the client may not be aware of the actual object being used.

### The main differences between Proxy and Decorator
The Decorator Design Pattern, on the other hand, is another structural design pattern that provides a way to **add** functionality to an object dynamically. However, the main difference between the Proxy and Decorator patterns is that **the Proxy controls access to the object, while the Decorator simply adds functionality to it**.

In summary, the Proxy Design Pattern is used to control access to an object, while the Decorator Design Pattern is used to add functionality to an object. Both patterns have their own pros and cons and can be useful in different situations depending on the specific requirements of your application.