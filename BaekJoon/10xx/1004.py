import math

num = int(input())

for i in range(num):
    result = 0

    x1, y1, x2, y2 = map(int, input().strip().split(" "))

    planets = []

    planetsLength = int(input())

    for i in range(planetsLength):
        planets.append(list(map(int, input().strip().split(" "))))

    for planet in planets:
        x = planet[0]
        y = planet[1]
        r = planet[2]

        distance1 = math.sqrt(math.pow(x-x1,2)+math.pow(y-y1,2))
        distance2 = math.sqrt(math.pow(x-x2,2)+math.pow(y-y2,2))

        if (distance1 < r and distance2 > r) or(distance2 < r and distance1 > r):
            result+=1
    
    print(result)
