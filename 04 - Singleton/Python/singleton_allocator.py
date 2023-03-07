import random

class Database:
    _instance = None

    # initializer allways runs (maybe it's not a good approach)
    def __init__(self) -> None:
        self.id = random.randint(1, 1000)
        print(f"Loading database {self.id}...")

    def __new__(cls, *args, **kwargs):
        if not cls._instance:
            cls._instance = super(Database, cls).__new__(cls, *args, **kwargs)
        return cls._instance


if __name__ == "__main__":
    d1 = Database()
    d2 = Database()
    print(d1 == d2) # returns True
