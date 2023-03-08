from collections.abc import Iterable
from abc import ABC

class Connectable(Iterable, ABC):
    def connect_to(self, other):
        if self == other:
            return
        
        for s in self:
            for o in other:
                s.outputs.append(o)
                o.inputs.append(s)

class Neuron(Connectable):
    def __init__(self, name) -> None:
        self.name = name
        self.inputs = []
        self.outputs = []
    
    def __str__(self) -> str:
        return f'{self.name}, ' \
            f'{len(self.inputs)} inputs, ' \
            f'{len(self.outputs)} outputs'
    
    def __iter__(self):
        yield(self)


class NeuronLayer(list, Connectable):
    def __init__(self, name, count):
        super().__init__()
        self.name = name
        for x in range(0, count):
            self.append(Neuron(f'{name}-{x}'))
    
    def __str__(self) -> str:
        return f'{self.name} with {len(self)} neurons'
    


if __name__ == "__main__":
    neuron1 = Neuron('n1')
    neuron2 = Neuron('n2')
    layer1 = NeuronLayer('l1', 3)
    layer2 = NeuronLayer('21', 4)

    neuron1.connect_to(neuron2)
    neuron1.connect_to(layer1)
    layer1.connect_to(neuron2)
    layer1.connect_to(layer2)

    print(neuron1)
    print(neuron2)
    print(layer1)
    print(layer2)
    