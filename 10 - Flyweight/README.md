## Flyweight Design Pattern
----
The Flyweight design pattern is a structural design pattern that focuses on optimizing memory usage by sharing common data across multiple objects. It is used when there are many small objects that share the same state or data, and creating a new object for each instance would be too memory-intensive.

In Flyweight pattern, a Flyweight Factory is responsible for creating and managing the Flyweight objects. The Factory maintains a pool of existing Flyweight objects and returns an existing object when a new one is requested. If a requested Flyweight object does not exist, the Factory creates a new one and adds it to the pool.

### Pros:
- **Memory optimization**: Flyweight pattern optimizes memory usage by reusing objects, which leads to a reduced memory footprint and improved performance.
- **Improves performance**: Since Flyweight pattern uses a shared pool of objects, it reduces the amount of memory allocation and deallocation operations, which results in improved performance.
- **Simplifies code**: Flyweight pattern reduces the complexity of code by abstracting the shared data into a separate object.

### Cons:
- **Increased complexity**: Flyweight pattern adds an additional layer of complexity to the code due to the separation of shared data.
- **Thread safety**: The Flyweight pattern requires careful implementation to ensure thread safety.
- **Limited applicability**: The Flyweight pattern is only applicable when there is a large number of small objects that share the same state or data.