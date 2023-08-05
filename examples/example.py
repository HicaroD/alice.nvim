# Program to check Armstrong numbers in a certain interval


class A:
    def __init__(self) -> None:
        self.a = 12

    async def something(self):
        await something


lower = 100
upper = 2000

for num in range(lower, upper + 1):
    # order of number
    order = len(str(num))

    # initialize sum
    sum = 0

    temp = num
    while temp > 0:
        digit = temp % 10
        sum += digit**order
        temp //= 10

    if num == sum:
        print(num)
