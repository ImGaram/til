import numpy as np
import matplotlib.pyplot as plt

w, b = 3, -1
x = np.random.normal(0, 10, size=(100, ))
y = w*x+b
noise = np.random.normal(0,0.3,(100,))
y=y+noise
y=1/(1+np.exp(-y))

flg, ax = plt.subplots(figsize=(10, 10))
ax.scatter(x, y, alpha=0.5)
ax.tick_params(labelsize=20)

plt.show()

t_x = 2
x = 8
running_rate = 0.1

for i in range(10):
    diff = 2*(x-2)
    x = x-running_rate*diff
    print(x)

t_a, t_b = 3, -1
N=100
X = np.random.normal(loc=0, scale=1, size=(N, ))
Y= t_a*X+t_b
noise = 0.3*np.random.normal(loc=0, scale=1, size=(N, ))
Y =Y+noise

a, b =-2, 5
X_min, X_max = X.min(), X.max()
Y_min = a*X_min+b
Y_max = a*X_max+b


flg, ax = plt.subplots(figsize=(10, 10))
ax.scatter(x, y, alpha=0.5)
ax.plot([X_min, X_max], [Y_min, Y_max])
ax.axvline(x=0, linestyle=':', linewidth=1)
ax.axhline(y=0, linestyle=':', linewidth=1)
plt.show()