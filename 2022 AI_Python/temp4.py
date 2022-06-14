import numpy as np

n_centroid = 5
n_data = 100
centroids = np.random.randint(0, 10, (n_centroid, 2))
data = np.random.randint(0, 10, (n_data, 2))

for sample in data:
    x, y = sample[0], sample[1]
    for centroid in centroids:
        centroid_x, centroid_y = centroid[0], centroid[1]
        distance = np.sqrt((x-centroid_x)**2 + (y-centroid_y)**2)


for sample in data:
    sample = sample.reshape((1, 2))
    distance = sample - data
    distance = np.sum(distance, axis=-1)
    dis = np.sqrt(distance)

for centroid in centroids:
    centroid = centroid.reshape((1, 2))
    distanc = np.power(sample - centroids, 2)
    distanc = np.sum(distance, axis=-1)
    distanc = np.sqrt(distance)