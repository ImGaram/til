import numpy as np
import matplotlib.pyplot as plt

N=100
X = np.random.normal(40, 5, (N,))
Y = (X > 40).astype(int)

a,b = -1, 38
test_x = np.linspace(30,50,100)
pred = a*test_x+b
pred = 1/(1+np.exp(-pred))

fig, ax = plt.subplots(figsize=(10, 5))
ax.scatter(X,Y)

for i in range(N):
    print("tlqkf")

plt.show()