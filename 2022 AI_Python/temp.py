import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm

N=100
cmap = cm.get_cmap('rainbow', lut=N)

fig, ax = plt.subplots(figsize=(10,10))
for i in range(N):
    ax.scatter(i,i,color=cmap(i))

plt.show()

iteration = 20    #업데이트 횟수

cmap = cm.get_cmap('rainbow', lut=N)
x = np.linspace(-1, 5 ,100)
y= (x-2)**2
fig, ax = plt.subplots(figsize=(10,10))
ax.plot(x,y)

a = 4
b = (a-2)**2
ax.scatter(a,b, color='purple', s=100)

# training
learning_rate = 0.1
for i in range(iteration):
    diff = 2*(a-2)   #기울기
    a_tmp =a-learning_rate*diff
    b_tmp = (a_tmp-2)**2

    ax.scatter(a,b, color=cmap(i))
    ax.plot([a, a_tmp],[b, b_tmp], color=cmap(i), linewidth=3)

    a=a_tmp
    b=b_tmp

plt.show()

t_a,t_b=3,-1
N=100
X=np.random.normal(loc=0, scale=1, size=(N, ))
Y=t_a*X+t_b
noise=0.3*np.random.normal(loc=0, scale=1, size=(N, ))
Y=Y+noise

a,b=-2,5 #초기모델 좌표
X_min,X_max=X.min(),X.max()
Y_min=a*X_min+b
Y_max=a*X_max+b

fig,ax=plt.subplots(figsize=(10,10))
ax.scatter(X,Y,alpha=0.5)
ax.plot([X_min,X_max],[Y_min,Y_max])
ax.axvline(x=0, linestyle=':', linewidth=1)
ax.axhline(y=0, linestyle=':', linewidth=1)

learning_rate=0.03
cmap=cm.get_cmap('rainbow',lut=N)

fig2, ax2 = plt.subplots(figsize=(10,5))
ax2.axvline(x=t_a, color='red', linestyle=':', linewidth=1)
ax2.axhline(y=t_b, color='blue', linestyle=':', linewidth=1)
losses=[]


for i in range(N):
    x,y=X[i],Y[i]
    pred=a*x+b
    #     J =

    diff_a=2*(y-pred)*(-x)
    diff_b=2*(y-pred)*(-1)

    a=a-learning_rate*diff_a
    b=b-learning_rate*diff_b
    ax2.scatter(i, a, color='red')
    ax2.scatter(i, b, color='red')

    X_min,X_max=X.min(),X.max()
    Y_min=a*X_min+b
    Y_max=a*X_max+b
    ax.plot([X_min,X_max],[Y_min,Y_max],color=cmap(i),alpha=0.5)


plt.show()