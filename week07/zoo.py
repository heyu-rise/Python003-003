from abc import ABCMeta, abstractmethod


class Zoo:

    def __init__(self, name):
        self.name = name
        self.animals = []

    def add_animal(self, animal):
        if not self.animals.__contains__(animal):
            setattr(self, animal.__class__.__name__, 'contain')
            self.animals.append(animal)


class Animal(metaclass=ABCMeta):
    animal_figure_dict = {
        '小': 1, '中等': 2, '大': 3
    }

    @abstractmethod
    def __init__(self, animal_type, figure, character):
        self.animal_type = animal_type
        self.figure = figure
        self.character = character
        self.fierce = self.is_fierce()

    def is_fierce(self):
        if self.animal_figure_dict.__contains__(self.figure) \
                and self.animal_figure_dict[self.figure] >= 2 \
                and self.animal_type == '食肉' and self.character == '性格凶猛':
            return True
        else:
            return False

    def is_suit_as_pet(self):
        if self.fierce:
            return False
        else:
            return True


class Cat(Animal):
    yell = '喵'

    def __init__(self, name, animal_type, figure, character):
        super().__init__(animal_type, figure, character)
        self.name = name
        self.suit_as_pet = super().is_suit_as_pet()


class Dog(Animal):
    yell = '旺'

    def __init__(self, name, animal_type, figure, character):
        super().__init__(animal_type, figure, character)
        self.name = name
        self.suit_as_pet = super().is_suit_as_pet()


if __name__ == '__main__':
    # 实例化动物园
    z = Zoo('时间动物园')
    # 实例化一只猫，属性包括名字、类型、体型、性格
    cat1 = Cat('大花猫 1', '食肉', '大', '温顺')
    print(cat1.__dict__)
    # 增加一只猫到动物园
    z.add_animal(cat1)
    # 动物园是否有猫这种动物
    have_cat = hasattr(z, 'Cat')
    print(z.__dict__)
    print(have_cat)
