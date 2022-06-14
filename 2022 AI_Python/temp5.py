import numpy as np

data1 = np.random.normal(0, 1, (100, 2))
data2 = np.random.normal(0, 1, (200, 2))
data3 = np.random.normal(0, 1, (300, 2))

data1 = data1.reshape((1, 1, 100, 2))
data2 = data2.reshape((1, 200, 1, 2))
data3 = data3.reshape((300, 1, 1, 2))
