def sk(n):
    sum = 0
    for i in range(1,n+1): # since range gives half open interval
        sum = sum + (1/i)
    return sum

def parta():
    k = 1000
    while sk(k) > 4:
        k -= 1
    ans = k + 1 # smallest k is the last one to satisfy the condtion so we add 1.
    print(ans)

def partb():
    k = 10000
    while sk(k) > 8:
        k -= 1
    ans = k + 1 # smallest k is the last one to satisfy the condtion so we add 1.
    print(ans)


def partc():
    k = 100000
    while sk(k) > 12:
        k -= 1
    ans = k + 1 # smallest k is the last one to satisfy the condtion so we add 1.
    print(ans)

def partd():
    k = 5000000
    while sk(k) > 16:
        k -= 1
    ans = k + 1 # smallest k is the last one to satisfy the condtion so we add 1.
    print(ans)



# for loops faster than while loops beucase while loop keeps checking condition
# at each iteration.
