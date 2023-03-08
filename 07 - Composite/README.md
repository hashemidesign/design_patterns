## Composite Design Pattern
----
The Composite design pattern is a structural design pattern that allows us to compose objects into tree structures to represent part-whole hierarchies. It lets clients treat individual objects and compositions of objects uniformly.

In other words, the Composite pattern allows us to create a tree-like structure where a group of objects is treated the same way as an individual object. This makes it easy to represent hierarchies and structures that can be treated as a single object.

The pattern consists of three main components:

- **The Component**, which is the base interface or class for all the objects in the composition. It defines operations that can be performed on both simple and complex objects in the tree structure.
- **The Leaf**, which represents the individual objects in the composition. These are the building blocks for the composite structure and implement the operations defined by the Component.
- **The Composite**, which represents the complex objects in the composition. It has one or more child components, and it implements the operations defined by the Component by delegating them to its children.

One conceptual example of the Composite pattern can be a file system. The file system can be represented as a tree structure where directories and files are the nodes of the tree. Directories can contain other directories and files, which can be considered as the child nodes of the parent directory. Files are the leaf nodes of the tree structure as they cannot contain other nodes. By using the Composite pattern, we can treat the directories and files uniformly, and it becomes easy to perform operations on them recursively. For example, we can perform operations like copying, deleting, or searching files and directories in the file system.

### Pros:
- The Composite pattern makes it easy to represent complex hierarchies and structures.
- It allows us to treat individual objects and compositions of objects uniformly.
- It simplifies the client code, as the client does not need to know about the underlying structure of the composite.

### Cons:
- The Composite pattern can make the design overly general. Sometimes, it may be better to use simpler patterns like the Decorator or Chain of Responsibility pattern.
- It can be difficult to restrict the types of components that can be added to the composite. This can lead to errors at runtime.