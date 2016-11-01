eat food for food in ['toast', 'cheese', 'wine']

courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']
menu i + 1, dish for dish, i in courses

foods = ['broccoli', 'spinach', 'chocolate']
eat food for food in foods when food isnt 'chocolate'

shortNames = (name for name in list when name.length < 5)

countdown = (num for num in [10..1])

events = (x for x in [0..10] by 2)

yearsOld = max: 10, ida: 9, tim: 11

ages = for child, age of yearsOld
    "#{child} is #{age}"

ages = ("#{child} is #{age}" for child, age of yearsOld)

ages = ("#{child} is #{age}" for own child, age of yearsOld)

if this.studyingEconnomics
    buy() while supply > demand
    sell() until supply > demand
    loop sell()

num = 6
lyrics = while num -= 1
    "#{num} little monkeys, jumping on the bed. One fell out and bumped his head."
