
# Peceptron Gradient Decent

## Author:

## Naimul Haque

## 1 PERCEPTRONALGORITHM

The Perceptron is inspired by the information processing of a single neural cell called a neuron.
A neuron accepts input signals via its dendrites, which pass the electrical signal down to the cell body.
In a similar way, the Perceptron receives input signals from examples of training data that we weight and combined in a
linear equation called the activation.

Mathematically,

 g(x) =wt*xa

where w is the weight vector and xa is the augmented feature vector.

## 2 GRADIENTDESCENT

Gradient Descent is the process of minimizing a function by following the gradients of the cost function.
This involves knowing the form of the cost as well as the derivative so that from a given point you know the gradient and
can move in that direction, e.g. downhill towards the minimum value.

For the Perceptron algorithm, each iteration the weights (w) are updated

using the equation

wt+1=wt+μ

∑

x∈M

 xa

### where M is the set of miss-classified

### features.

## 3 PROBLEM SET UP

### Suppose,we have following sample in our

### two class problem :

```
The f e a t u r e v e c t o r :
```
```
m =
```
```
1 1 1
1 − 1 1
4 5 1
2 2. 5− 1
0 2 − 1
2 3 − 1
```
### where x = m(:,1:2) and classes = m(:,3)

### We now we generate the high

### dimensional sample points y , as discussed

### in the class. We used the following

### formula:

### y= [x 1

##### 2

### ,x 2

##### 2

### ,x 1 ∗x 2 ,x 1 ,x 2 ,1]

### We get the values of y as :

```
The f e a t u r e v e c t o r :
m =
```
```
1 1 1
1 − 1 1
4 5 1
2 2. 5− 1
0 2 − 1
```

###### 2 3 − 1

```
The t r a n f o r m e d f e a t u r e v e c t o r :
```
```
y =
```
```
1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0
1. 0 0 0 0 1. 0 0 0 0 −1.0000 1. 0 0 0 0 −1.0000 1. 0 0 0 0
1 6. 0 0 0 0 2 5. 0 0 0 0 2 0. 0 0 0 0 4. 0 0 0 0 5. 0 0 0 0 1. 0 0 0 0
−4.0000 −6.2500 −5.0000 −2.0000 −2.5000 −1.
0 −4.0000 0 0 −2.0000 −1.
−4.0000 −9.0000 −6.0000 −2.0000 −3.0000 −1.
```
The value of w is initialized with all zeroes. w= [111111]

## 4 TRAINING

The set the learning rateμ= 0. 1 and start our gradient decent algorithm with

The step by step numerical analysis for 2 epoch is shown below:

```
Epoc = 1
```
```
L e a r n i n g r a t e = 0. 1
```
```
The w e i g h t v e c t o r :
```
w =

```
1 1 1 1 1 1
```
```
The F e a t u r e f e c t o r :
```
```
y =
```
```
1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0
1. 0 0 0 0 1. 0 0 0 0 −1.0000 1. 0 0 0 0 −1.0000 1. 0 0 0 0
1 6. 0 0 0 0 2 5. 0 0 0 0 2 0. 0 0 0 0 4. 0 0 0 0 5. 0 0 0 0 1. 0 0 0 0
−4.0000 −6.2500 −5.0000 −2.0000 −2.5000 −1.
0 −4.0000 0 0 −2.0000 −1.
−4.0000 −9.0000 −6.0000 −2.0000 −3.0000 −1.
```
```
The updated w e i g h t v e c t o r :
```
w =

```
0. 2 0 0 0 −0.9250 −0.1000 0. 6 0 0 0 0. 2 5 0 0 0. 7 0 0 0
```
```
The g ( x ) =
```
```
0. 7 2 5 0
0. 4 2 5 0
−17.
2. 9 5 6 3
2. 5 0 0 0
5. 4 7 5 0
```
```
Number o f m i s c l a s i f i c a t i o n s = 1
```
```
Epoc = 2
```
```
L e a r n i n g r a t e = 0. 1
```
```
The w e i g h t v e c t o r :
```
w =

```
0. 2 0 0 0 −0.9250 −0.1000 0. 6 0 0 0 0. 2 5 0 0 0. 7 0 0 0
```
```
The updated w e i g h t v e c t o r :
```
```
w =
```
```
7. 3 0 0 0 6. 1 7 5 0 7. 0 0 0 0 7. 7 0 0 0 7. 3 5 0 0 7. 8 0 0 0
```
```
The f e a t u r e v e c t o r :
y =
```
```
1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0 1. 0 0 0 0
1. 0 0 0 0 1. 0 0 0 0 −1.0000 1. 0 0 0 0 −1.0000 1. 0 0 0 0
1 6. 0 0 0 0 2 5. 0 0 0 0 2 0. 0 0 0 0 4. 0 0 0 0 5. 0 0 0 0 1. 0 0 0 0
−4.0000 −6.2500 −5.0000 −2.0000 −2.5000 −1.
0 −4.0000 0 0 −2.0000 −1.
−4.0000 −9.0000 −6.0000 −2.0000 −3.0000 −1.
```
```
The g ( x ) =
```
```
4 3. 3 2 5 0
1 4. 6 2 5 0
4 8 6. 5 2 5 0
−144.
−47.
−172.
```
```
Number o f m i s c l a s i f i c a t i o n s = 3
```
## 5 CODE

The algorithm is implemented using

Matlab and the code is presented below:

### clc;

### clear all;

### %x1 %x2 %classes

### m=[

### 1 1 1

### 1 -1 1

### 4 5 1

### 2 2.5 -

### 0 2 -

### 2 3 -

### ];

### x1 = m(:,1);

### x2 = m(:, 2);

### classes = m(:,3);

### plot(x1(classes == 1),

### x2(classes == 1),'b*');

### hold on;

### 2


### plot(x1(classes == -1),

### x2(classes == -1),'r*');

### title('Distribution of

### datapoints of

### classes (1,-1)');

### xlabel('x1');

### ylabel('x2');

### xlim([-6 9]);

### ylim([-4 8]);

### grid on;

### y = [x1(classes == 1).^

### x2(classes == 1).^

### x1(classes ==

### 1).*x2(classes == 1)

### x1(classes == 1)

### x2(classes == 1) [1 1 1]'

### ;

### -x1(classes == -1).^

### -x2(classes == -1).^

### -x1(classes ==

### -1).*x2(classes == -1)

### -x1(classes == -1)

### -x2(classes == -1)

### -[1 1 1]'];

### w = [0 0 0 0 0 0];

### epoch = 2000;

### alpha = 0.1;

### for i = 1: epoch

### w = w +

### alpha*sum(y(y*w'<=0,:));

### end

### syms x1 x2;

### s =

### sym(w(1,1)*x1*x1+w(1,2)*x2*x2+w(1,3)*x1*x2+w(1,4)*

### x1+w(1,5)*x2+w(1,6));

### s2=solve(s,x2);

### xvals1 =[ -10:0.01:10];

### xvals2 (1,:) =

### subs(s2(1),x1 ,xvals1);

### plot(xvals1 ,xvals2 (1,:),'k');

## 6 OUTPUTGRAPH

### The decision boundary is drawn after

### training the weighting vector after 2000

### epochs.

### Figure 1. Decision Boundary

### 3


