## Memento Design Pattern
-----
The Memento design pattern is a behavioral design pattern that allows you to capture and restore an object's internal state without violating encapsulation. It achieves this by creating a memento object that encapsulates the internal state of the object to be saved, and another object, called the caretaker, that holds a collection of mementos.

### Pros:
- Encapsulates the state of an object, allowing for easier restoration.
- Separates concerns, allowing the object to focus on its core functionality.
- Provides a simple and flexible interface for creating and restoring mementos.
- Supports undo and redo functionality.

### Cons:
- Can increase the complexity of the codebase, especially for larger applications.
- Can result in increased memory usage if many mementos need to be stored.
- The memento object can expose internal state to the outside world, potentially breaking encapsulation if not implemented properly.

### When to use it:
The Memento design pattern is useful in situations where you need to save and restore an object's internal state, such as in undo and redo operations, or when implementing checkpoints in a long-running operation. It is also helpful when you want to capture the state of an object at a particular point in time and be able to restore it later, for example, in a game where the user can save and restore the game's state.