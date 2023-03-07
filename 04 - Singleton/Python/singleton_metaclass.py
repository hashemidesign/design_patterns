class Singleton(type):
    _instances = {}

    def __call__(cls, *args: any, **kwds: any) -> any:
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwds)
        return cls._instances[cls]


class Database(metaclass=Singleton):
    # in this case initializer runs only 1 time
    def __init__(self) -> None:
        print("Loading database....")


if __name__ == "__main__":
    d1 = Database()
    d2 = Database()

    print(d1 == d2)