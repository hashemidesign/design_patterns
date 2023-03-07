def singleton(class_):
    instances = {}

    def get_instance(*args, **kwargs):
        if class_ not in instances:
            instances[class_] = class_(*args, **kwargs)
        return instances[class_]
    
    return get_instance


@singleton
class Database:
    # in this case initializer runs only 1 time
    def __init__(self) -> None:
        print("Loading database....")


if __name__ == "__main__":
    d1 = Database()
    d2 = Database()

    print(d1 == d2)