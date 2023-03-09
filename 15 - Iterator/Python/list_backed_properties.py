class Creature:
    _strength = 0
    _agility = 1
    _intelligence = 2

    def __init__(self) -> None:
        self.stats = [10, 10, 10]
    
    @property
    def strength(self):
        return self.stats[Creature._strength]
    
    @strength.setter
    def strength(self, value):
        self.stats[Creature._strength] = value

    @property
    def agility(self):
        return self.stats[Creature._strength]
    
    @agility.setter
    def agility(self, value):
        self.stats[Creature._agility] = value
    
    @property
    def intelligence(self):
        return self.stats[Creature._intelligence]
    
    @intelligence.setter
    def intelligence(self, value):
        self.stats[Creature._intelligence] = value
    
    @property
    def sum_of_stats(self):
        return sum(self.stats)

    @property
    def max_stat(self):
        return max(self.stats)

    @property
    def average_stat(self):
        return float(sum(self.stats) / len(self.stats))


if __name__ == "__main__":
    creature = Creature()
    print(creature.sum_of_stats)
    print(creature.average_stat)
    print(creature.max_stat)