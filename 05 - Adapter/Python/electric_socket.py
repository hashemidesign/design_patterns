class EuropeanSocketInterface:
    def voltage(self):
        pass

    def live(self):
        pass

    def neutral(self):
        pass

    def earth(self):
        pass


class Socket(EuropeanSocketInterface):
    def voltage(self):
        return 230

    def live(self):
        return 1

    def neutral(self):
        return -1

    def earth(self):
        return 0


class USASocketInterface:
    def voltage(self):
        pass

    def live(self):
        pass

    def neutral(self):
        pass


class Adapter(USASocketInterface):
    def __init__(self, socket):
        self.socket = socket

    def voltage(self):
        return 110

    def live(self):
        return self.socket.live()

    def neutral(self):
        return self.socket.neutral()


class ElectricKettle:
    def __init__(self, power):
        self.power = power

    def boil(self):
        if self.power.voltage() > 110:
            print("Kettle on fire!")
        else:
            if self.power.live() == 1 and self.power.neutral() == -1:
                print("Coffee time!")
            else:
                print("No power.")
                
if __name__ == "__main__":
    socket = Socket()
    adapter = Adapter(socket)
    kettle = ElectricKettle(adapter)

    kettle.boil()
