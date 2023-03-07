class MonoState:
    _shared_state = {}

    def __new__(cls, *args, **kwargs):
        obj = super(MonoState, cls).__new__(cls, *args, **kwargs)
        obj.__dict__ = cls._shared_state
        return obj


class CFO(MonoState):
    def __init__(self) -> None:
        self.name = ''
        self.money_managed = 0

    def __str__(self) -> str:
        return f"{self.name} manages ${self.money_managed}"

class CEO:
    __shared_state = {
        'name': 'Steve',
        'age': 55
    }

    def __init__(self) -> None:
        self.__dict__ = self.__shared_state
    
    def __str__(self) -> str:
        return f'{self.name} is {self.age} years old'


if __name__ == "__main__":
    # ceo1 = CEO()
    # print(ceo1)
    # ceo2 = CEO()
    # ceo2.age = 77
    # print(ceo1, ceo2, sep='\n')

    cfo1 = CFO()
    cfo1.name = "Sheryl"
    cfo1.money_managed = 1
    print(cfo1)

    cfo2 = CFO()
    cfo2.name = "Ruth"
    cfo2.money_managed = 100
    print(cfo2)
    print(cfo1)
