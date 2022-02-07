import numpy as np
import matplotlib.pyplot as plt


def a(n):
    result = (5-77*np.sin(n)+8*n**2)/(1-4*n**2)
    return result

def plot():
    x = np.arange(1,15,0.5) # Half open interval
    y= a(x)
    plt.plot(x,y,'ro') # red- 'r', blue- 'b'{solid lines}, add o at the end for dots.
    plt.show()

def parta():
    i = 1
    while i < 1000:
        print(a(i))
        i += 1
    plot()

def partb():
    L = -2.0
    eps = 1/500
    N = 1

    while abs(a(N) - L) >= eps:
        N += 1
    print(str(N))

def partc():
    M = 1000
    L = -2.0
    eps = 1/500
    while abs(a(M) - L) < eps:
        M -= 1
    ans = M + 1
    print(str(ans))

def partd():
    epsilon = 1/500
    L = -2.0
    x = np.arange(100,115,0.5)
    y= abs(a(x) - L)
    plt.plot(x,y,'ro')
    plt.axhline(y = epsilon, color = 'b', linestyle = '-')
    plt.show()



def main():
    parta()

main()
