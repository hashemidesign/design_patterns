from abc import  ABC, abstractmethod
from enum import Enum, auto

class HotDrink(ABC):
    @abstractmethod
    def consume(self):
        pass


class Tea(HotDrink):
    def consume(self):
        print('This tea is delicius')
    

class Coffee(HotDrink):
    def consume(self):
        print('This coffee is delicius')


class HotDrinkFactory(ABC):
    @abstractmethod
    def prepare(self, amount):
        pass


class TeaFactory(HotDrinkFactory):
    def prepare(self, amount):
        print(f'Put in tea bag, boil water, pour {amount}ml, enjoy')
        return Tea()

class CoffeeFactory(HotDrinkFactory):
    def prepare(self, amount):
        print(f'grind some bins, boil water, pour {amount}gr, enjoy')
        return Coffee()

class HotDrinkMachine:
    class AvailableDrinks(Enum):
        COFFEE = auto()
        TEA = auto()
    
    factories = []
    initialized = False

    def __init__(self) -> None:
        if not self.initialized:
            self.initialized = True
            for d in self.AvailableDrinks:
                name = d.name[0] + d.name[1:].lower()
                factory_name = name + 'Factory'
                factory_instance = eval(factory_name)()
                self.factories.append((name, factory_instance))
    
    def make_drink(self):
        print('Available drinks:')
        for f in self.factories:
            print(f[0])
        
        s = input(f'Please pick drink (0-{len(self.factories) - 1}): ')
        idx = int(s)
        s = input(f'Specify amount: ')
        amount = int(s)
        return self.factories[idx][1].prepare(amount)


if __name__ == "__main__":
    hd = HotDrinkMachine()
    hd.make_drink()